#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <SDL2/SDL.h>

#define SCREEN_X 1280
#define SCREEN_Y 720
int main(int argv, char** args){
  int running = 1;

  Engine_System engine_System(SCREEN_X, SCREEN_Y);
  
  engine_System.init();

  while(running){
    
    
    running = engine_System.main_loop();

    

  }

  printf("Finished!\n");
  return 0;
}