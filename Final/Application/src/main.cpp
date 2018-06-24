/**********************************************************
 * This file is generated by 20-sim ANSI-C Code Generator
 *
 *  file:  xxmain.c
 *  subm:  PositionControllerPan
 *  model: Jiwy
 *  expmt: Jiwy
 *  date:  June 7, 2018
 *  time:  2:05:31 PM
 *  user:  Universiteit Twente
 *  from:  20-sim 4.7 Campus License
 *  build: 4.7.0.8692
 **********************************************************/

/* This file is a demo application of how the submodel function can 
 * be used. It uses the global time variables that are used by both
 * the submodel and the integration method.
 *
 * PLEASE NOTE: THIS IS AN EXAMPLE WHERE ALL INPUTS ARE ZERO ! 
 * USE YOUR OWN INPUTS INSTEAD!! ALSO THE SUBMODEL MIGHT SIMPLY 
 * NOT WORK CORRECTLY WITH INPUTS THAT ARE ZERO.
 */


#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
}
#endif
#include "mainModel.h"
#include <stdio.h>
#include <math.h>
#include <fcntl.h>      // open()
#include <unistd.h>     // close()
#include <stdint.h>
#include <stdlib.h>
#include <time.h> // clock()

int main(int argc, char * argv[]){

  mainModel model;
  model.initializeModel();
  while(1){
    model.loop(50.0, 30.0);
  }
  return 0;
}