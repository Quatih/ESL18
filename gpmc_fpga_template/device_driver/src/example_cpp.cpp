/**
 * @file example.cpp
 * @brief cpp example file.
 * @uathor Jan Jaap Kempenaar, University of Twente.
 */

#include <iostream>
#include "gpmc_driver_cpp.h"

int main(int argc, char* argv[])
{
  if (2 != argc)
  {
    std::cout << "Usage: " << argv[0] << " <device_name>" << std::endl;
    return 1;
  }
  
  std::cout << "GPMC driver cpp-example" << std::endl;
  // Create GPMC device driver object
  std::cout << "Opening gpmc_fpga..." << std::endl;
  gpmc_driver Device(argv[1]);
  
  if (!Device.isValid())
  {
    std::cerr << "Error opening gpmc_fpga device: %s" << std::endl;
    return 1;
  }
  
  // Write value to idx 2
  std::cout << "Set value to idx 2." << std::endl;
  long value = 200;
  Device.setValue(value, 2);

  // Read a value from idx 0
  value = Device.getValue(0);
  std::cout << "Read value from idx 0, result: " << value << std::endl;
  
  
  std::cout << "Exiting..." << std::endl;
  return 0;
}
