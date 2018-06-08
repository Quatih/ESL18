#include "stdio.h"
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	int fd;
	char buffer[32];
	const char *send = "Hello from Overo Fire!\n";
	if (2 != argc)
	{
		printf("Usage: %s <device_name>\n", argv[0]);
		return 1;
	}
	
	fd = open(argv[1], O_RDWR);
	if (0 > fd)
	{
		printf("Error, could not open device: %s.\n", argv[1]);
		return 1;
	}
	
	while(1)
	{
		read(fd, &buffer, sizeof(buffer));
		printf("Received:	%s", buffer);
		printf("Sending:	%s", send);
		write(fd, send, sizeof(send));
	}	
}