#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <SDL2/SDL.h>


int main(int argv, char** args){
  Engine_System engine_System;
  int running = 1;
  printf("Starting Main Loop\n");
  while(running == ES_CONTINUE_RUNNING){
    
    running = engine_System.main_loop();

  }


  printf("Finished!\n");
  return 0;
}