/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */
#include <stdio.h>
#include <alt_types.h>
#include <io.h>
#include <system.h>
#include <string.h>
#include <stdlib.h>

#include "sys/alt_stdio.h"
#include "system.h"

#include <unistd.h>
int main()
{
  int width = 0;
  while(1){

	  alt_u32 output = 0;
	  output = output | width;
	  output = output | 1 << 8;
	  IOWR_32DIRECT(MOTOR_CONTROLLER_0_BASE, 0x00, output);
	  //printf("Read from decoders: %d, %d\n", enc0, enc1);
	  usleep(100000); //slp 1s
	  width++;
	  if(width == 251){
		  usleep(1000000);
		  width = 0;
	  }
  }
  return 0;
}
