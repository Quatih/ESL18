
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
  //model.move2end();
  model.setPos(M_PI/2, M_PI/2);
  while(1){
    model.loop(1, 1);
  }
  return 0;
}
