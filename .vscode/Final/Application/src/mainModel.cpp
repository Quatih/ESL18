

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
#define tilt_max 309.0



// returns the current run-time, hopefully
#define curr_time (double) clock()/CLOCKS_PER_SEC

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

int32_t mainModel::getPan(){
  return getGPMCValue(fd, readpanidx);
}
int32_t mainModel::getTilt(){
   getGPMCValue(fd, readtiltidx);
}

void mainModel::setPan(uint32_t val){
   setGPMCValue(fd, val, setpanidx);
}

void mainModel::setTilt(uint32_t val){
  setGPMCValue(fd, val, settiltidx);
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
  setGPMCValue(fd, 1, 7);
}

void mainModel::stop(){
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
  stop();
  resetEncoders();
}



void mainModel::initializeModel(){
  XXDouble upan [2 + 1];
  XXDouble ypan [2 + 1];
  XXDouble utilt [3 + 1];
  XXDouble ytilt [1 + 1];

  // open connection to device.
  printf("Opening gpmc_fpga...\n");
  fd = open("/dev/gpmc_fpga", 0);
  if (0 > fd)
  {
  printf("Error, could not open device: %s.\n", argv[1]);
  return 1;
  }

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

  move2end();

  /* Initialize the submodel itself */
  XXInitializeSubmodelpan (upan, ypan, curr_time);
  /* Initialize the submodel itself */
  XXInitializeSubmodeltilt (utilt, ytilt, curr_time);

}
