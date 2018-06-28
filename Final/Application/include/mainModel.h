#pragma once

extern "C" {
  #include "xxtypes.h"
}

#include <stdint.h>
#define _BSD_SOURCE
#include <sys/time.h>

//#define SIMUL
#define STOPTEST

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
  
  int32_t inline getPan();
  int32_t inline getTilt();
  void inline setPan(uint32_t val);
  void inline setTilt(uint32_t val);
  
  void inline setPanIn();
  void inline setPanPos(double radpos);

  void inline setTiltIn();
  void inline setTiltPos(double radpos);

public:
  mainModel();
  ~mainModel();

  void resetEncoders();
  bool positionMet();
  void stopMotors();
  void setPos(double radpan, double radtilt);
  void modPosPixel(int32_t xpixels, int32_t ypixels);
  void move2end();
  void initializeModel();
  void loop();
  void loop(int32_t xpixels, int32_t ypixels);
  void movetest(double sp, double st);
};
