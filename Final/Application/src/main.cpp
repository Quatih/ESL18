
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

#define WIDTH 320
#define HEIGHT 240

int main(int argc, char * argv[]){

  mainModel model;
  model.initializeModel();
  model.move2end();
  usleep(2000000);
  //model.setPos(-M_PI/2, -M_PI/4);
  while(1){
    model.loop(-1,-1);
    /*model.movetest(0.5, 0.5);
    printf("setpos\n");
    usleep(2000000);
    printf("setneg\n");
    //model.movetest(0.0,0.0);
    usleep(1000000);
    model.movetest(0.5,-0.5);
     
    usleep(1000000);
     //model.movetest(0.0,0.0);
    usleep(1000000);
*/
  }
  return 0;
}
