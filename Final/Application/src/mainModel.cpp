
#include "mainModel.h"
#define _BSD_SOURCE // for gettimeofday
#include <sys/time.h>
extern "C" {
/* 20-sim include files */
#include "xxsubmodpan.h"
#include "xxsubmodtilt.h"
#include "gpmc_driver_c.h"
#include "xxtypes.h"


}
#include <stdio.h>
#include <math.h>
#include <fcntl.h>      // open()
#include <unistd.h>     // close()
#include <stdint.h>
#include <stdlib.h>

#define readpanidx 2
#define readtiltidx 0
#define setpanidx 6
#define setiltidx 4

#define enc_max 1200.0
#define pan_max 1110.0 // ~333°
#define tilt_max 309.0
#define panconst 1.0/WIDTH
#define tiltconst 1.0/HEIGHT
#define panrangeconst 0.03
#define tiltrangeconst 0.03
#define HEIGHT 240
#define WIDTH 320
// diagonal field of view of our camera, 63 for the logitech setup
#define diagFOV 60 
// diagonal angle of the frame
static const double diagangle = atan(HEIGHT/WIDTH);
// ratio of pixel to degrees
static const double pixelratio = (double)diagFOV*cos(diagangle)/WIDTH;

// HELPER FUNCTIONS

/* The pan encoder spans values which correspond to approximately Pi radians. */
double inline convertRad(int32_t val, double max)
{
  return ((double)val/max) * M_PI;
}

/* According to 20SIM, the output is a signal between -1.0 and 1.0. 
This output must be converted to a PWM output between 0 and 250 
and a direction according to a truthtable. */
uint32_t convertPWM(double val)
{
  //Brake
  if(val == 0)
    return 0;
  
  uint32_t ret_val = 0;
  double ch = abs(val * 250.0);
  //printf("%f, %f\n", val, ch);
  ret_val = (uint32_t) (ch);
  //Clockwise
  if(val < 0)
  {
    //INA = 1;
    //INB = 0;
    ret_val |= 0x01 << 8;
  }
  //Counterclockwise
  else
  {
    //INA = 0;
    //INB = 1;
    ret_val |= 0x02 << 8;
  }
  return ret_val;
}


// converts pixels to degrees
double inline pixel2deg(int pixels){
  /* 63° field of view width-wise, should be same ration with height
     could be more, or less than 63° for our set-up */
  return (double)pixels*pixelratio; 
}

// returns radians with degrees as input
double inline deg2rad(double deg) {
  return deg/360.0*M_PI;
}

double inline pixel2rad(int pixels){
  return deg2rad(pixel2deg(pixels));
}

// END HELPER FUNCTIONS

mainModel::mainModel(){
  #ifndef STOPTEST
  tiltpos = true;
  panpos = true;
  #endif
}
mainModel::~mainModel(){
  XXTerminateSubmodelpan (upan, ypan, 0);
  XXTerminateSubmodeltilt (utilt, ytilt, 0);
  #ifndef SIMUL
  close(fd);
  #endif
}

int32_t inline mainModel::getPan(){
  #ifndef SIMUL
  return getGPMCValue(fd, readpanidx);
  #else 
  //encpan = encpan - (int32_t)ypan[1];
  return ++(++encpan);
  #endif
}


int32_t inline mainModel::getTilt(){
  #ifndef SIMUL
  return getGPMCValue(fd, readtiltidx);
  #else
  //enctilt = enctilt - (int32_t)ytilt[0];
  return ++enctilt;
  #endif
}

void inline mainModel::setPan(uint32_t val){
  #ifndef SIMUL
  setGPMCValue(fd, val, setpanidx);
  #else
  #endif
}

void inline mainModel::setTilt(uint32_t val){
  #ifndef SIMUL
  setGPMCValue(fd, val, settiltidx);
  #else
  #endif
} 

void inline mainModel::setPanPos(double radpos){
  upan[1] = radpos;
} 

void inline mainModel::setPanIn(){
  upan[0] = convertRad(getPan(), enc_max);
}

void inline mainModel::setTiltPos(double radpos){
  utilt[2] = radpos;
} 

void inline mainModel::setTiltIn(){
  utilt[1] = convertRad(getTilt(), enc_max/2);
}

void inline mainModel::resetEncoders() {
  #ifndef SIMUL
  setGPMCValue(fd, 1, 7);
  #else
  encpan = 0;
  enctilt = 0;
  #endif
}

void inline mainModel::stopMotors(){
  setPan(0);
  setTilt(0);
}

bool mainModel::positionMet(){
  #ifdef STOPTEST
  double diffpan = upan[1] - upan[0];
  double difftilt = utilt[2] - utilt[1];
  return (diffpan <= panrangeconst) && (diffpan >= -panrangeconst) && (difftilt <= tiltrangeconst) && (difftilt >= -tiltrangeconst);
  #else
  return !(panpos && tiltpos);
  #endif
}


void mainModel::setPos(double radpan, double radtilt){
  // double diffpan = convertRad(getPan(), pan_max) - radpan;
  // double difftilt = convertRad(getTilt(), tilt_max) - radtilt;
  // if((difftilt <= tiltrangeconst) && (difftilt >= -tiltrangeconst)){
  //   //printf("pan position already met\n");
  // }
  // else {
  //   panpos = true;
  // }
  // if((difftilt <= tiltrangeconst) && (difftilt >= -tiltrangeconst)){
  //   //printf("tilt position already met\n");
  // }
  // else {
  //   tiltpos = true;
  // }
  #ifndef STOPTEST 
  tiltpos = true;
  panpos = true;
  #endif
  setPanPos(radpan);
  setTiltPos(radtilt);
  //printf("target: %f, %f\n", upan[1], utilt[2]);
}

void mainModel::modPosPixel(int32_t xpixels, int32_t ypixels){
  //setPos((double)xpixels*panconst, (double)ypixels*tiltconst); 
  // add converted pixels to the current position.
  double pan = upan[1] + pixel2rad(xpixels);
  double tilt = utilt[2] + pixel2rad(ypixels);
   // in case we want to check input for correctness 
  if(pan >= convertRad(pan_max, enc_max)){
    setPanPos(convertRad(pan_max, enc_max));
  } 
  else if (pan < 0.0){
    setPanPos(0.0);
  }
  else{
    setPanPos(pan);
  }
  if (tilt >= convertRad(tilt_max, enc_max/2)){
    setTiltPos(convertRad(tilt_max, enc_max/2));
  }
  else if (tilt < 0.0) {
    setTiltPos(0.0);
  }
  else{
    setTiltPos(tilt);
  }
  // setPos(pan, tilt);
}

void mainModel::move2end(){ 
  resetEncoders();
  printf("moving to end\n");
  int32_t pan = getPan(), tilt = getTilt();
  int32_t lp = 3000, lt = 3000; // defined out of range of encoders
  int tiltrange = 2, panrange = 5;
  bool tf = true, pf = true;
  setPan(convertPWM(0.5));
  setTilt(convertPWM(0.5));

  while(tf || pf){ // terminate when both have gone to the end

    lp = pan;
    lt = tilt;

    pan = getPan();
    tilt = getTilt();
    if(( ((tilt - lt) <= tiltrange) && ((tilt-lt) >= -tiltrange)) ){
      setTilt(convertPWM(0.0));
      printf("tilt stop\n");
      pf = false;
    }
    if((((pan - lp) <= panrange) && ((pan-lp) >= -panrange))){
      setPan(convertPWM(0.0));
      printf("pan stop\n");
      tf = false;
    }
    printf("%7d, %7d\r\n", tilt -lt, pan - lp);
    usleep(100000);
  }
  stopMotors();
  resetEncoders();
}

void mainModel::initializeModel(){
  time.tv_sec = 0;
  time.tv_usec = 0;
  gettimeofday(&time, NULL);
  timenow = time.tv_usec;
  panpos = true;
  tiltpos = true;
  #ifndef SIMUL
  // open connection to device.
  printf("Opening gpmc_fpga...\n");
  fd = open("/dev/gpmc_fpga", 0);
  if (0 > fd)
  {
  printf("Error, could not open device: %s.\n", argv[1]);
  return 1;
  }
  #endif
  /* Initialize the inputs and outputs with correct initial values */
  upan[0] = 0.0;		/* in */
  upan[1] = 0.0;		/* position */

  ypan[0] = 0.0;		/* corr */
  ypan[1] = 0.0;		/* out */

/* Initialize the inputs and outputs with correct initial values */
  utilt[0] = 0.0;		/* corr */
  utilt[1] = 0.0;		/* in */
  utilt[2] = 0.0;		/* position */

  ytilt[0] = 0.0;		/* out */

  //move2end();

  /* Initialize the submodel itself */
  XXInitializeSubmodelpan (upan, ypan, 0);
  /* Initialize the submodel itself */
  XXInitializeSubmodeltilt (utilt, ytilt, 0);
  resetEncoders();

  setPos(0.0, 0.0);
  //printf("target: %f, %f\n", upan[1], utilt[2]);
}

void mainModel::loop(){
  
  uint32_t Mpan, Mtilt;
  #ifndef STOPTEST 
  double diffpan, difftilt;
  #endif
  gettimeofday(&time, NULL);

  if (time.tv_usec < timenow){
    timenow = time.tv_usec;
  }
  else if(time.tv_usec - timenow >= 10000)
  {
    long dur = time.tv_usec - timenow;
    timenow = time.tv_usec; 
    setPanIn(); 		
    setTiltIn(); 

    /* Call the submodel to calculate the output */
    XXCalculateSubmodelpan (upan, ypan, (double)dur/1000000);
    XXCalculateSubmodeltilt (utilt, ytilt, (double)dur/1000000);
    #ifdef STOPTEST
    Mpan = convertPWM(ypan[1]);
    setPan(Mpan);
    #else
    diffpan = upan[1] - upan[0];
    if(panpos && (diffpan <= panrangeconst) && (diffpan >= -panrangeconst)){
      printf("pan position met\n");
      setPan(0);
      panpos = false;
    }
    else if (panpos) {     
      Mpan = convertPWM(ypan[1]);
      setPan(Mpan);
    }
    #endif
    
    #ifdef STOPTEST
    Mtilt = convertPWM(ytilt[0]);
    setTilt(Mtilt);
    printf("time: %lu, %f, %f, %f, %f, %f, %f, %f, %u, %u\n", time.tv_sec, (double)dur/1000000, upan[0], utilt[1], ypan[1], ytilt[0], upan[1], utilt[2], Mpan,Mtilt);
    #else
    difftilt = utilt[2] - utilt[1];
    if(tiltpos && (difftilt <= tiltrangeconst) && (difftilt >= -tiltrangeconst)){
      printf("tilt position met\n");
      setTilt(0);
      tiltpos = false;
    }
    else if (tiltpos) {
      Mtilt = convertPWM(ytilt[0]);
      setTilt(Mtilt);
    }
    printf("time: %lu, %f, %f, %f, %f, %f, %f, %f, %f, %f, %u, %u\n", time.tv_sec, (double)dur/1000000, upan[0], utilt[1], ypan[1], ytilt[0], diffpan, difftilt, upan[1], utilt[2], Mpan,Mtilt);
    #endif
    
  }

}

void mainModel::loop(int32_t xpixels, int32_t ypixels){
  
   
  uint32_t Mpan, Mtilt;
  #ifndef STOPTEST 
  double diffpan, difftilt;
  #endif
  gettimeofday(&time, NULL);

  if (time.tv_usec < timenow){
    timenow = time.tv_usec;
  }
  else if(time.tv_usec - timenow >= 10000)
  {
    long dur = time.tv_usec - timenow;
    timenow = time.tv_usec; 
    modPosPixel(xpixels, ypixels);
    setPanIn(); 		
    setTiltIn(); 

    /* Call the submodel to calculate the output */
    XXCalculateSubmodelpan (upan, ypan, (double)dur/1000000);
    XXCalculateSubmodeltilt (utilt, ytilt, (double)dur/1000000);
    #ifdef STOPTEST
    Mpan = convertPWM(ypan[1]);
    setPan(Mpan);
    #else
    diffpan = upan[1] - upan[0];
    if(panpos && (diffpan <= panrangeconst) && (diffpan >= -panrangeconst)){
      printf("pan position met\n");
      setPan(0);
      panpos = false;
    }
    else if (panpos) {     
      Mpan = convertPWM(ypan[1]);
      setPan(Mpan);
    }
    #endif
    
    #ifdef STOPTEST
    Mtilt = convertPWM(ytilt[0]);
    setTilt(Mtilt);
    printf("time: %lu, %f, %f, %f, %f, %f, %f, %f, %u, %u\n", time.tv_sec, (double)dur/1000000, upan[0], utilt[1], ypan[1], ytilt[0], upan[1], utilt[2], Mpan,Mtilt);
    #else
    difftilt = utilt[2] - utilt[1];
    if(tiltpos && (difftilt <= tiltrangeconst) && (difftilt >= -tiltrangeconst)){
      printf("tilt position met\n");
      setTilt(0);
      tiltpos = false;
    }
    else if (tiltpos) {
      Mtilt = convertPWM(ytilt[0]);
      setTilt(Mtilt);
    }
    printf("time: %lu, %f, %f, %f, %f, %f, %f, %f, %f, %f, %u, %u\n", time.tv_sec, (double)dur/1000000, upan[0], utilt[1], ypan[1], ytilt[0], diffpan, difftilt, upan[1], utilt[2], Mpan,Mtilt);
    #endif
    
  }
}
