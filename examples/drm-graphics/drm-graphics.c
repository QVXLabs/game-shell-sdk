#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <xf86drm.h>
#include <xf86drmMode.h>
#include <drm_fourcc.h>

#define DRI_DEVICE "/dev/dri/card1"
#define CHECK_ERROR(x) if (x) { printf("%s error: %s\n", #x, strerror(errno)); }

typedef struct sDrmBuffer
{
	uint32_t stride;
	uint32_t size;
	uint32_t buffer_hndl;
	uint32_t framebuffer_hndl;
	void* pPixmap;
} DrmBuffer;

typedef struct sFrameBuffer
{
	int fd;
	uint32_t active_frame;
	uint32_t connector_id;
	uint32_t crtc_id;
	drmModeCrtc* old_crtc;
	drmModeModeInfo mode;
	DrmBuffer buffers[2];
} FrameBuffer;

/* ------------ */
static drmModeConnector* findConnector_(int, const drmModeRes*);
static DrmBuffer createDrmBuffer_(int, uint32_t, uint32_t);
static void destroyDrmBuffer_(int, const DrmBuffer*);
/* ------------ */
FrameBuffer*
FrameBuffer_Init(const char* pDevice)
{
	drmModeRes* pResouces = NULL;
	drmModeConnector* pConnector = NULL;
	drmModeEncoder* pEncoder = NULL;
	FrameBuffer* pFrameBuffer = malloc(sizeof(FrameBuffer));

	memset(pFrameBuffer, 0, sizeof(FrameBuffer));

	// open device
	if (0 > (pFrameBuffer->fd = open(pDevice, O_RDWR| O_NONBLOCK)))
	{
		goto framebuffer_error;
	}

	// get drm resources
	if (!(pResouces = drmModeGetResources(pFrameBuffer->fd)))
	{
		goto framebuffer_error;
	}

	// find a connected connector
	if (!(pConnector = findConnector_(pFrameBuffer->fd, pResouces)))
	{
		goto framebuffer_error;
	}
	pFrameBuffer->connector_id = pConnector->connector_id;

	// store screen mode
	memcpy(&pFrameBuffer->mode,
	       &pConnector->modes[0],
	       sizeof(drmModeModeInfo));

	// get crtc id
	if (!(pEncoder =
		drmModeGetEncoder(pFrameBuffer->fd, pConnector->encoder_id)))
	{
		goto framebuffer_error;
	}
	pFrameBuffer->crtc_id = pEncoder->crtc_id;

	// save old crtc to preserve on destruction
	pFrameBuffer->old_crtc = drmModeGetCrtc(pFrameBuffer->fd,
	                                        pEncoder->crtc_id);

	// create frame buffers
	for (unsigned i = 0u; i < 2; ++i)
	{
		pFrameBuffer->buffers[i] =
			createDrmBuffer_(pFrameBuffer->fd,
			                 pFrameBuffer->mode.hdisplay,
			                 pFrameBuffer->mode.vdisplay);
	}

	// show first emtpy frame buffer
	CHECK_ERROR(drmModeSetCrtc(
		pFrameBuffer->fd,
		pFrameBuffer->crtc_id,
		pFrameBuffer->buffers[0].framebuffer_hndl,
		0,
		0,
		&pFrameBuffer->connector_id,
		1,
		&pFrameBuffer->mode));
	// clean up
	drmModeFreeEncoder(pEncoder);
	drmModeFreeConnector(pConnector);
	drmModeFreeResources(pResouces);
	return pFrameBuffer;
framebuffer_error:
	// error handling
	if (pEncoder) drmModeFreeEncoder(pEncoder);
	if (pConnector) drmModeFreeConnector(pConnector);
	if (pResouces) drmModeFreeResources(pResouces);
	if (0 <= pFrameBuffer->fd) close(pFrameBuffer->fd);
	free(pFrameBuffer);
	return NULL;
}

/* ------------ */
void
FrameBuffer_Destory(FrameBuffer* pFrameBuffer)
{
	// restore old crtc
	if (pFrameBuffer->old_crtc)
	{
		CHECK_ERROR(drmModeSetCrtc(
			pFrameBuffer->fd,
			pFrameBuffer->old_crtc->crtc_id,
			pFrameBuffer->old_crtc->buffer_id,
			pFrameBuffer->old_crtc->x,
			pFrameBuffer->old_crtc->y,
			&pFrameBuffer->connector_id,
			1,
			&pFrameBuffer->old_crtc->mode));
		drmModeFreeCrtc(pFrameBuffer->old_crtc);
	}
	// destory buffers;
	for (unsigned i = 0u; i < 2; ++i)
	{
		destroyDrmBuffer_(pFrameBuffer->fd, &pFrameBuffer->buffers[i]);
	}
	close(pFrameBuffer->fd);
	free(pFrameBuffer);
}

/* ------------ */
void*
FrameBuffer_Flip(FrameBuffer* pFrameBuffer)
{
	uint32_t curr_frame_ndx = pFrameBuffer->active_frame & 0x1;
	uint32_t next_frame_ndx = ++pFrameBuffer->active_frame & 0x1;

	CHECK_ERROR(drmModeSetCrtc(pFrameBuffer->fd,
		pFrameBuffer->crtc_id,
		pFrameBuffer->buffers[curr_frame_ndx].framebuffer_hndl,
		0,
		0,
		&pFrameBuffer->connector_id,
		1,
		&pFrameBuffer->mode));
	return pFrameBuffer->buffers[next_frame_ndx].pPixmap;
}

/* ------------ */
static drmModeConnector*
findConnector_(int descriptor, const drmModeRes* pResources)
{
	for (unsigned i = 0u; i < pResources->count_connectors; ++i)
	{
		drmModeConnector* pConnector =
			drmModeGetConnector(descriptor, pResources->connectors[i]);

		// skip disconnected connectors
		if (DRM_MODE_CONNECTED != pConnector->connection || !pConnector->count_modes)
		{
			drmModeFreeConnector(pConnector);
			continue;
		}
/*
		if (pConnector->connector_type != DRM_MODE_CONNECTOR_DisplayPort)
		{
			drmModeFreeConnector(pConnector);
			continue;
		}
*/
		// skip connectors not bound to an encoder
		if (!pConnector->encoder_id)
		{
			drmModeFreeConnector(pConnector);
			continue;
		}
		return pConnector;
	}
	return NULL;
}

/* ------------ */
static DrmBuffer
createDrmBuffer_(int descriptor, uint32_t width, uint32_t height)
{
	struct drm_mode_create_dumb dumb_buffer;
	struct drm_mode_map_dumb dumb_buffer_map;
	DrmBuffer ret_buffer;

	memset(&dumb_buffer, 0, sizeof(dumb_buffer));
	memset(&dumb_buffer_map, 0, sizeof(dumb_buffer_map));
	memset(&ret_buffer, 0, sizeof(ret_buffer));

	// create buffer
	dumb_buffer.width = width;
	dumb_buffer.height = height;
	dumb_buffer.bpp = 32;
	CHECK_ERROR(drmIoctl(descriptor, DRM_IOCTL_MODE_CREATE_DUMB, &dumb_buffer));

	// create frame buffer object
	{
		uint32_t handles[4] = {dumb_buffer.handle };
		uint32_t strides[4] = {dumb_buffer.pitch };
		uint32_t offsets[4] = {0};
		CHECK_ERROR(drmModeAddFB2(
			descriptor,
			width,
			height,
			DRM_FORMAT_XRGB8888,
			handles,
			strides,
			offsets,
			&ret_buffer.framebuffer_hndl,
			0));
	}
	// map framebuffer
	dumb_buffer_map.handle = dumb_buffer.handle;
	CHECK_ERROR(drmIoctl(descriptor, DRM_IOCTL_MODE_MAP_DUMB, &dumb_buffer_map));
	void* pPixmap = mmap(0,
	                     dumb_buffer.size,
	                     PROT_READ | PROT_WRITE,
	                     MAP_SHARED,
	                     descriptor,
	                     dumb_buffer_map.offset);
	memset(pPixmap, 0, dumb_buffer.size);

	// assign return object
	ret_buffer.stride = dumb_buffer.pitch;
	ret_buffer.size = dumb_buffer.size;
	ret_buffer.buffer_hndl = dumb_buffer.handle;
	ret_buffer.pPixmap = pPixmap;
	return ret_buffer;
}

/* ------------ */
static void
destroyDrmBuffer_(int descriptor, const DrmBuffer* pBuffer)
{
	struct drm_mode_destroy_dumb dumb_buffer;

	memset(&dumb_buffer, 0, sizeof(dumb_buffer));
	munmap(pBuffer->pPixmap, pBuffer->size);
	CHECK_ERROR(drmModeRmFB(descriptor, pBuffer->framebuffer_hndl));

	dumb_buffer.handle = pBuffer->buffer_hndl;
	CHECK_ERROR(drmIoctl(descriptor, DRM_IOCTL_MODE_DESTROY_DUMB, &dumb_buffer));
}

/* ------------ */
int main()
{
	FrameBuffer* pFrameBuffer = FrameBuffer_Init(DRI_DEVICE);

	uint32_t* pPixmap = FrameBuffer_Flip(pFrameBuffer);

	for (unsigned i = 0; i < pFrameBuffer->buffers[0].size / 4; ++i)
	{
		pPixmap[i] = 0xffff0000; // draw red
	}

	FrameBuffer_Flip(pFrameBuffer);

	printf("press enter to continue\n");
	getchar();

	FrameBuffer_Destory(pFrameBuffer);
	return 0;
}
