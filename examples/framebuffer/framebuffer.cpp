#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <linux/input.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <poll.h>
#include <termios.h>
#include <string.h>
#include <stdint.h>
#include <string>

class FrameBufferDevice {
public:
  FrameBufferDevice();
  virtual ~FrameBufferDevice();
 
  inline unsigned width() const {
	return variable_screen_info_.xres;
  }
  
  inline unsigned height() const {
	return variable_screen_info_.yres;	
  }
  
  inline unsigned bitsPerPixel() const {
	return variable_screen_info_.bits_per_pixel;	
  }
  
  inline void * pixmap() {
	return pPixmap_;
  }
private:
  int fd_;
  void * pPixmap_;
  fb_var_screeninfo variable_screen_info_;
};

class KeyboardDevice {
public:
  KeyboardDevice(const std::string& device);
  virtual ~KeyboardDevice();
  bool event(int &out_code, bool &out_is_pressed);
  bool isValid() const {
	return (0 <= fd_);
  }
private:
  int fd_;
};

FrameBufferDevice::FrameBufferDevice() : fd_(0), pPixmap_(nullptr) {
  memset(&variable_screen_info_, 0, sizeof(fb_var_screeninfo));
  if (0 <= (fd_ = open("/dev/fb0", O_RDWR))) {	
	// get info
	fb_fix_screeninfo fixed_screen_info;	
	ioctl(fd_, FBIOGET_FSCREENINFO, &fixed_screen_info);
	ioctl(fd_, FBIOGET_VSCREENINFO, &variable_screen_info_);
	printf("Opened %s\n", fixed_screen_info.id);
	printf("Screen information\n"
		   "width:  %d\n"
		   "height: %d\n"
		   "virtual width:  %d\n"
		   "virtual height: %d\n"
		   "bits per pixel: %d\n",
		   variable_screen_info_.xres,
		   variable_screen_info_.yres,
		   variable_screen_info_.xres_virtual,
		   variable_screen_info_.yres_virtual,
		   variable_screen_info_.bits_per_pixel);

	// map screen into process space
	if (nullptr == (pPixmap_ = mmap(nullptr,
									(variable_screen_info_.xres *
									 variable_screen_info_.yres *
									 variable_screen_info_.bits_per_pixel)
									/ 8,
									PROT_READ | PROT_WRITE,
									MAP_SHARED,
									fd_,
									0))) {
	  printf("failed to map frame buffer\n");
	}	
  } else {
	printf("failed to open framebuffer: %s(%d)\n",
		   strerror(errno),
		   errno);	
  }
}

FrameBufferDevice::~FrameBufferDevice() {
  if (nullptr != pPixmap_) {
	munmap(pPixmap_, 0);
  }		   
  if (0 >= fd_) {
	close(fd_);
  }
}

KeyboardDevice::KeyboardDevice(const std::string& device) : fd_(0) {
  if (0 <= (fd_ = open(device.c_str(), O_RDWR))) {
	  // disable terminal echo
	  struct termios tty;
	  tcgetattr(STDIN_FILENO, &tty);
	  tty.c_lflag &= ~(ICANON | ECHO);
	  tcsetattr(STDIN_FILENO, TCSANOW, &tty);	  
	} else {
	  printf("failed to open keyboard: %s(%d)\n",
			 strerror(errno),
			 errno);		  
	}
}

KeyboardDevice::~KeyboardDevice() {
  if (isValid()) {	
	// close
	close(fd_);
	
	// enable terminal echo
    struct termios tty;
    tcgetattr(STDIN_FILENO, &tty);
    tty.c_lflag |= (ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &tty);	
  }
}

bool KeyboardDevice::event(int &out_code, bool &out_is_pressed) {
  input_event event;
  pollfd kbd_descriptor[1] = {{ fd_, POLLIN, 0 }};
  if (isValid()) { 
	auto result = poll(kbd_descriptor, 1, 0);
	if (0 < result) {
	  if (kbd_descriptor[0].revents & POLLIN) {
		auto bytes_read = read(fd_, &event, sizeof(event));
		if (bytes_read == sizeof(event) && EV_KEY == event.type) {
		  out_code = event.code;
		  out_is_pressed = (0 != event.value);
		  return true;
		}
	  }
	} else if (0 > result) {
	  printf("poll error: %s(%d)\n",
			 strerror(errno),
			 errno);	
	}
  }
  return false;
}

int main() {
  FrameBufferDevice frame_buffer;
  KeyboardDevice keyboard("/dev/input/event1");


  // draw white screen
  memset(frame_buffer.pixmap(), 0xff, 320*240*4);
  
  printf("Press any key to continue\n");
  while (keyboard.isValid()) {
	int key_code = 0;
	bool is_pressed = false;;
	if(keyboard.event(key_code, is_pressed) && is_pressed) {
	  printf("key code: %d was pressed\n", key_code);
	  break;
	}
  }
  return 0;
}
