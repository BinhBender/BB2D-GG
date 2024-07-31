#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <SDL2/SDL.h>

#define WINDOW_SIZE_X 1280
#define WINDOW_SIZE_Y 720 

int main(int argv, char** args){
  int running = 1;

  Engine_System engine_System(WINDOW_SIZE_X, WINDOW_SIZE_Y);
  
  engine_System.init();
  engine_System.SpawnObject(new Sphere(100, 500, 500));
  while(running){
    
    
    running = engine_System.main_loop();

    

  }

  printf("Finished!\n");
  return 0;
}