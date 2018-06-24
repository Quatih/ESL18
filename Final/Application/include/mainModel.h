#pragma once

extern "C" {
  #include "xxtypes.h"
}
#include <stdint.h>

#define SIMUL

class mainModel {
private:
  XXDouble upan [2 + 1];
  XXDouble ypan [2 + 1];
  XXDouble utilt [3 + 1];
  XXDouble ytilt [1 + 1];

  bool panpos = true, tiltpos = true;
  long timenow;
  int fd;
  #ifdef SIMUL
  intt32_t encpan, enctilt;
  #endif
  void getPan();
  void getTilt();
  void setPan(uint32_t val);
  void setTilt(uint32_t val);
  
  void setPanIn();
  void setPanPos(double pos);

  void setTiltIn();
  void setTiltPos(double pos);

public:
  mainModel();
  ~mainModel();
  void init();
  void resetEncoders();
  void move2end();
  void stopMotors();
  void loop(uint32_t xpixels, uint32_t ypixels);

}
