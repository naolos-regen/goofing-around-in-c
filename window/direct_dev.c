#include <fcntl.h>
#include <linux/fb.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>

int	open_fb(char * filename, int bitflag)
{
	int test;
	test = open(filename, bitflag);
	if (test == -1)
	{
		perror("error opening");
		raise(SIGINT);
	}	
	return test;
}

void	*xmmap(void *addr, size_t len, int prot, int flags, int fildes, off_t off)
{
	void * test;
	test = mmap(addr, len, prot, flags, fildes, off);

	if ((long) test == -1)
	{
		perror("error mapping framebuf to mem");
		close(fildes);
		raise(SIGINT);
	}

	return (test);
}

void	exit_prog(char * fbp, const long screenSize, int fb)
{
	munmap(fbp, screenSize);
	close(fb);
}

int main(void)
{
	int fb;
	long screenSize; 
	char *fbp;
	long i;

	fb = open_fb("/dev/fb0", O_RDWR);

	struct fb_var_screeninfo vinfo;
	if (ioctl(fb, FBIOGET_VSCREENINFO, &vinfo))
	{
		perror("error reading screen");
		close(fb);
		return (1);
	}

	screenSize = vinfo.yres_virtual * vinfo.xres_virtual * (vinfo.bits_per_pixel / 8);
	fbp = xmmap(0, screenSize, PROT_READ | PROT_WRITE, MAP_SHARED,fb, 0);

	i = 0;
	while(i < screenSize)
	{
		fbp[i] = 0x00;
		fbp[i + 1] = 0x00;
		fbp[i + 2] = 0xFF;
		fbp[i + 3] = 0x00;
		i += 4;
	}

	sleep(5);

	exit_prog(fbp, screenSize, fb);
	return (0);
}
