/**
 * @file example.c
 * @brief c example file.
 * @author Jan Jaap Kempenaar, University of Twente.
 */

#include "stdio.h"
#include "gpmc_driver_c.h"

#include <fcntl.h>      // open()
#include <unistd.h>     // close()

int main(int argc, char* argv[])
{
  int fd; // File descriptor.
  if (2 != argc)
  {
    printf("Usage: %s <device_name>\n", argv[0]);
    return 1;
  }
  
  printf("GPMC driver c-example\n");
  
  // open connection to device.
  printf("Opening gpmc_fpga...\n");
  fd = open(argv[1], 0);
  if (0 > fd)
  {
    printf("Error, could not open device: %s.\n", argv[1]);
    return 1;
  }
  
  // Read a value from idx 0
  long value = getGPMCValue(fd, 0);
  printf("Read value from idx 0, result: %li\n", value);
  
  // Write value to idx 2
  printf("Set value to idx 2.\n");
  value = 200;
  setGPMCValue(fd, value, 2);
  
  printf("Exiting...\n");
  // close connection to free resources.
  close(fd);
  return 0;
}
