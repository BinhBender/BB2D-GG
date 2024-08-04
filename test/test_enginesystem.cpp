#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <SDL2/SDL.h>

#define SCREEN_X 1280
#define SCREEN_Y 720

void starting_conditions(Engine_System& engine)
{
  srand(time(0));
  int row =  5;
  int rowscale = float(SCREEN_X)/row;

  int height = 5;
  int heightscale = float(SCREEN_Y)/height;

  for(size_t i = 0; i < row; i++ ){
    for (size_t j = 0; j < height; j++)
    {
      engine.SpawnObject(new Sphere(rand()%50, {(i * 120) + 120, (j * 120) + 120}));
    }
    
  }
}
int main(int argv, char** args){
  int running = 1;

  Engine_System engine_System(SCREEN_X, SCREEN_Y);
  
  engine_System.init();
  starting_conditions(engine_System);
  while(running){
    
    
    running = engine_System.main_loop();

    

  }

  printf("Finished!\n");
  return 0;
}