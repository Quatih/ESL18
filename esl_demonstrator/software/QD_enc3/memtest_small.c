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
  printf("Hello from Nios II!\n");
  printf("Start reading from counter\n");
  int enc0;
  int enc1;

  while(1){

	  enc0 = IORD_32DIRECT(QUADRATUREDECODER_0_BASE, 0x00);
	  enc1 = IORD_32DIRECT(QUADRATUREDECODER_1_BASE, 0x00);
	  printf("Read from decoders: %d, %d\n", enc0, enc1);
	  usleep(100000); //slp 1s
  }
  return (0);
  return 0;
}
