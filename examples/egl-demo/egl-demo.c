#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <X11/Xatom.h>
#include <X11/Xutil.h>
#include <GLES2/gl2.h>
#include <EGL/egl.h>

#define EGL_CHECK_ERROR(x) if (!x) { \
	const EGLint error = eglGetError();							  \
	printf("%s failed: %s(%d)\n", #x, eglErrorStr(error), error); \
	exit(-1);													  \
  }																  \
  
static const char *
eglErrorStr(EGLint error) {
  switch(error) {
  case EGL_SUCCESS: return "No error";
  case EGL_NOT_INITIALIZED:
	return "EGL not initialized or failed to initialize";
  case EGL_BAD_ACCESS: return "Resource inaccessible";
  case EGL_BAD_ALLOC: return "Cannot allocate resources";
  case EGL_BAD_ATTRIBUTE:
	return "Unrecognized attribute or attribute value";
  case EGL_BAD_CONTEXT: return "Invalid EGL context";
  case EGL_BAD_CONFIG: return "Invalid EGL frame buffer configuration";
  case EGL_BAD_CURRENT_SURFACE: return "Current surface is no longer valid";
  case EGL_BAD_DISPLAY: return "Invalid EGL display";
  case EGL_BAD_SURFACE: return "Invalid surface";
  case EGL_BAD_MATCH: return "Inconsistent arguments";
  case EGL_BAD_PARAMETER: return "Invalid argument";
  case EGL_BAD_NATIVE_PIXMAP: return "Invalid native pixmap";
  case EGL_BAD_NATIVE_WINDOW: return "Invalid native window";
  case EGL_CONTEXT_LOST: return "Context lost";
  }
  return "Unknown error ";
}

static Window
XWindow_Create_(Display * pDisplay,
				int x,
				int y,
				int w,
				int h,
				const char * title) {
  Window x_win;
  XWMHints hints;
  Window root_win = DefaultRootWindow(pDisplay);
  
  XSetWindowAttributes win_attrib = {
	.event_mask = ExposureMask | ButtonPressMask | KeyPressMask
  };
  
  // create window
  x_win = XCreateWindow(pDisplay,
						root_win,
						0,
						0,
						320,
						240,
						0,
						CopyFromParent,
						InputOutput,
						CopyFromParent,
						CWEventMask,
						&win_attrib);

  // update window name
  XStoreName(pDisplay, x_win, title);

  // window hints
  hints.input = True;
  hints.flags = InputHint;
  XSetWMHints(pDisplay, x_win, &hints);

  // show window
  XMapWindow(pDisplay, x_win);
  return x_win;
}

static void
XWindow_Destroy_(Display * pDisplay, Window window) {
  XDestroyWindow(pDisplay, window);
  XCloseDisplay(pDisplay);
}

static EGLDisplay
EGL_CreateDisplay_(Display * pXDisplay) {
  EGLint egl_version_major;
  EGLint egl_version_minor;
  EGLDisplay egl_display = EGL_NO_DISPLAY;

  // get EGL display
  if (EGL_NO_DISPLAY ==
	  (egl_display = eglGetDisplay((EGLNativeDisplayType)pXDisplay))) {
	printf("Failed to get EGL display\n");
	return egl_display;
  }

  // initalize EGL
  EGL_CHECK_ERROR(eglInitialize(egl_display,
								&egl_version_major,
								&egl_version_minor));

  // output info
  printf("Initialized EGL version %d.%d\n",
		 egl_version_major,
		 egl_version_minor);
  printf("EGL Client APIs: %s\n",
		 eglQueryString(egl_display, EGL_CLIENT_APIS));
  printf("EGL Vendor: %s\n", eglQueryString(egl_display, EGL_VENDOR));
  printf("EGL Version: %s\n", eglQueryString(egl_display, EGL_VERSION));
  printf("EGL Extensions: %s\n",
		 eglQueryString(egl_display, EGL_EXTENSIONS));	
  
  return egl_display;
}

static EGLSurface
EGL_CreateSurface_(EGLDisplay egl_display, Window x_window) {
  EGLConfig egl_conf;
  EGLint num_configs;
  EGLContext egl_context = EGL_NO_CONTEXT;
  EGLSurface egl_surface = EGL_NO_SURFACE;
  EGLint context_attributes[] = {
	EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE
  };
  EGLint egl_config_constraints[] = {
	EGL_BUFFER_SIZE, 32,
	EGL_RED_SIZE, 8,
	EGL_GREEN_SIZE, 8,
	EGL_BLUE_SIZE, 8,
	EGL_ALPHA_SIZE, 0,
	EGL_DEPTH_SIZE, EGL_DONT_CARE,
	EGL_STENCIL_SIZE, EGL_DONT_CARE,
	EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,	
	EGL_SURFACE_TYPE, EGL_WINDOW_BIT | EGL_PIXMAP_BIT,
	EGL_NONE
  };

  // choose config
  EGL_CHECK_ERROR(eglChooseConfig(egl_display,
								  egl_config_constraints,
								  &egl_conf,
								  1,
								  &num_configs));
  printf("EGL configurations found %d\n", num_configs);

  // create surface
  if (EGL_NO_SURFACE ==
	  (egl_surface = eglCreateWindowSurface(egl_display,
											egl_conf,
											x_window,
											NULL))) {
	printf("Unable to create EGL surface. (%d)\n", eglGetError());
	exit(-1);
  }

  // create active context
  if (EGL_NO_CONTEXT ==
	  (egl_context = eglCreateContext(egl_display,
									  egl_conf,
									  EGL_NO_CONTEXT,
									  context_attributes))) {
	printf("Unable to create EGL context.\n");
	exit(-1);	
  }
  EGL_CHECK_ERROR(eglMakeCurrent(egl_display,
								 egl_surface,
								 egl_surface,
								 egl_context));

  // setup v-sync
  EGL_CHECK_ERROR(eglSwapInterval(egl_display, 1));
  
  return egl_surface;
}


int
main() {
  Window x_window;
  XWindowAttributes window_attributes;
  Atom window_message_close;
  EGLDisplay egl_display;
  EGLSurface egl_surface;
  EGLContext egl_context;
  Display * pXDisplay = NULL;
  
  // open X11 display
  if (!(pXDisplay = XOpenDisplay(NULL))) {
	printf("Failed to connect to X server\n");
	return -1;
  }
  x_window = XWindow_Create_(pXDisplay, 0, 0, 320, 240, "egl-demo");

  // register window close events
  window_message_close = XInternAtom(pXDisplay, "WM_DELETE_WINDOW", False);
  XSetWMProtocols(pXDisplay, x_window, &window_message_close, 1);

  // create egl display & surface
  egl_display = EGL_CreateDisplay_(pXDisplay);
  egl_surface = EGL_CreateSurface_(egl_display, x_window);
  egl_context = eglGetCurrentContext();
  
  // set viewport dimensions
  XGetWindowAttributes(pXDisplay, x_window, &window_attributes);
  glViewport(0, 0, window_attributes.width, window_attributes.height);

  // event loop
  for (int exit = 0; !exit;) {	
	XEvent x_event;
	while (XPending(pXDisplay) > 0) {
	  XNextEvent(pXDisplay, &x_event);
	  switch (x_event.type) {
	  case ClientMessage:
		if (x_event.xclient.data.l[0] == window_message_close) {
		  printf("Window closed\n");
		  exit = 1;
		}
		break;
	  case KeyPress:
		printf("Key Pressed\n");
		exit = 1;
		break;
	  }
	}
	
	// draw screen red
	glClearColor(1.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT);
	eglSwapBuffers(egl_display, egl_surface);
  }

  eglMakeCurrent(pXDisplay,
				 EGL_NO_SURFACE,
				 EGL_NO_SURFACE,
				 EGL_NO_SURFACE);
  eglDestroyContext(egl_display, egl_context);
  eglDestroySurface(egl_display, egl_surface);
  eglTerminate(egl_display);
  XWindow_Destroy_(pXDisplay, x_window);
  return 0;
}
