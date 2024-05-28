#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <SDL2/SDL.h>


int main(int argv, char** args){
  int running = 1;

  SDL_Init(SDL_INIT_EVERYTHING);
  SDL_Window* window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  
  Engine_System engine_System;
  engine_System.window = window;
  engine_System.init();
  SDL_Event windowEvent;
  engine_System.renderer = renderer;
  while(running){
    
    while (SDL_PollEvent(&windowEvent))
    {
      if(windowEvent.type == SDL_QUIT)
      {
        std::cout << "Exit!" << std::endl;
        running = false;
      }
    }
    
    engine_System.main_loop();

  }

  SDL_DestroyWindow(window);
  SDL_DestroyRenderer(renderer);

  SDL_Quit();
  printf("Finished!\n");
  return 0;
}