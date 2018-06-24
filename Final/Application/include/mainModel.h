#pragma once

extern "C" {
  #include "xxtypes.h"
}

#include <stdint.h>
#define _BSD_SOURCE
#include <sys/time.h>

#define SIMUL

class mainModel {
private:
  double upan [2 + 1];
  double ypan [2 + 1];
  double utilt [3 + 1];
  double ytilt [1 + 1];

  bool panpos, tiltpos;
  long timenow;
  struct timeval time;

  int fd;
  #ifdef SIMUL
  int32_t encpan, enctilt;
  #endif
  int32_t getPan();
  int32_t getTilt();
  void setPan(uint32_t val);
  void setTilt(uint32_t val);
  
  void setPanIn();
  void setPanPos(double pos);

  void setTiltIn();
  void setTiltPos(double pos);

public:
  mainModel();
  ~mainModel();
  void initializeModel(uint32_t xpixels, uint32_t ypixels);
  void resetEncoders();
  void move2end();
  void stopMotors();
  void loop();
  void loop(uint32_t xpixels, uint32_t ypixels);
};
