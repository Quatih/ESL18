
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
  model.initializeModel(300.0, 200.0);
  while(1){
    model.loop();
  }
  return 0;
}
