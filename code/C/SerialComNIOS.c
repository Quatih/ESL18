
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
  while(1){
	printf("Hello from Nios II!\n");
	usleep(1000000); //slp 1s
  }
  return 0;
}
