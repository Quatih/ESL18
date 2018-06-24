

#include "mainModel.h"

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
#include <time.h> // clock()

#define readpanidx 2
#define readtiltidx 0
#define setpanidx 6
#define setiltidx 4

#define pan_max 1110.0
#define tilt_max pan_max // 309.0
#define panconst 1.0/320.0
#define tiltconst 1.0/240.0

/* The pan encoder spans values which correspond to approximately Pi radians. */
double ConvertRad(int32_t val, double max)
{
  return ((double)val/max) * M_PI;
}

/* According to 20SIM, the output is a signal between -1.0 and 1.0. 
This output must be converted to a PWM output between 0 and 250 
and a direction according to a truthtable. */
uint32_t ConvertPWM(double val)
{
  //Brake
  if(val == 0)
    return 0;
  
  uint32_t ret_val = 0;
  double ch = abs(val * 250.0);
  //printf("%f, %f\n", val, ch);
  ret_val = (uint32_t) (ch);
  //Clockwise
  if(val > 0)
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

mainModel::mainModel(){
  initializeModel();
}
mainModel::~mainModel(){

}

int32_t mainModel::getPan(){
  #ifndef SIMUL
  int32_t ret = getGPMCValue(fd, readpanidx);
  #else 
  int32_t ret = encpan++;
  #endif
  return ret;
}


int32_t mainModel::getTilt(){
  #ifndef SIMUL
  int32_t ret = getGPMCValue(fd, readtiltidx);
  #else
  int32_t ret = enctilt++;
  #endif
  return ret;
}

void mainModel::setPan(uint32_t val){
  #ifndef SIMUL
  setGPMCValue(fd, val, setpanidx);
  #else
  #endif
}

void mainModel::setTilt(uint32_t val){
  #ifndef SIMUL
  setGPMCValue(fd, val, settiltidx);
  #else
  #endif
} 

void mainModel::setPanPos(double pos){
  upan[1] = ConvertRad(pos, pan_max);
} 

void mainModel::setPanIn(){
  upan[0] = ConvertRad(getPan(), pan_max);
}

void mainModel::setTiltPos(double pos){
  utilt[2] = ConvertRad(pos, tilt_max);
} 

void mainModel::setTiltIn(){
  utilt[1] = ConvertRad(getTilt(), tilt_max);
}

void mainModel::resetEncoders() {
  #ifndef SIMUL
  setGPMCValue(fd, 1, 7);
  #else
  encpan = 0;
  enctilt = 0;
  #endif
}

void mainModel::stopMotors(){
  setPan(0);
  setTilt(0);
}

void mainModel::move2end(){ 
  resetEncoders();
  printf("moving to end\n");
  int32_t pan = getPan(), tilt = getTilt();
  int32_t lp = 3000, lt = 3000; // defined out of range of encoders
  setPan(ConvertPWM(-0.5));
  setTilt(ConvertPWM(-0.5));

  while(tilt != lt && pan != lp){ // terminate when both have gone to the end
    usleep(2000);
    lp = pan;
    lt = tilt;

    pan = getPan();
    tilt = getTilt();

  }
  stopMotors();
  resetEncoders();
}



void mainModel::initializeModel(){
  XXDouble upan [2 + 1];
  XXDouble ypan [2 + 1];
  XXDouble utilt [3 + 1];
  XXDouble ytilt [1 + 1];
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
}

void mainModel::loop(uint32_t xpixels, uint32_t ypixels){
  
  uint32_t Mpan, Mtilt;
  setPanPos((double)xpixels*panconst);
  setTiltPos((double)ypixels*tiltconst);
  setPanIn(getPan()); 		
  setTiltIn(getTilt()); 

  struct timeval time;

  time.tv_sec = 0;
  time.tv_usec = 0;
  gettimeofday(&time, NULL);

  if (time.tv_usec < timenow){
    timenow = time.tv_usec;
  }
  else // if(time.tv_usec - timenow >= 10000)
  {
    long dur = time.tv_usec - timenow;
    timenow = time.tv_usec; 
    setPanIn(getPan()); 		
    setTiltIn(getTilt()); 

    /* Call the submodel to calculate the output */
    XXCalculateSubmodelpan (upan, ypan, (double)dur/1000000);
    XXCalculateSubmodeltilt (utilt, ytilt, (double)dur/1000000);

    double diff;
    diff = upan[1] - utilt[0];
    
    if(panpos && (diff <= 0.05) && (diff >= -0.05)){
      printf("pan position met\n");
      setPan(0);
      panpos = false;
    }
    else if (panpos) {     
      Mpan = ConvertPWM(ypan[1]);
      setPan(Mpan);
    }

    diff = utilt[2] - utilt[1];
    
    if(tiltpos && (diff <= 0.05) && (diff >= -0.05)){
      printf("tilt position met\n");
      setTilt(0);
      tiltpos = false;
    }
    else if (tiltpos) {
      
      Mtilt = ConvertPWM(ytilt[0]);
      setTilt(Mtilt);
    }
    printf("Timestep: %f, %f, %f, %f, %f, %d, %d\n", dur, upan[0], utilt[1], ypan[1], ytilt[0], Mpan,Mtilt);
  }

}
