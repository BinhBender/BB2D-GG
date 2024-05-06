#include "engine_system.h"

Engine_System::Engine_System(){
  SDL_Init(SDL_INIT_EVERYTHING);
  window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y, SDL_WINDOW_ALLOW_HIGHDPI);
  renderer = renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

  physics = Physics();
  time = Time::GetInstance();
  inputHandler = Input::GetInstance();
  
  camera = Camera(window, renderer);

}
Engine_System::~Engine_System(){


  SDL_DestroyWindow(window);
  SDL_DestroyRenderer(renderer);

  
}

void Engine_System::main_loop(){ 
/*
  Timer starts
  
  Input
  Physics
  Render
  ...
    
  Time ends
*/
  time->start_time();
  inputHandler->Update();

  physics.Update_Object();
  //camera.render();





  time->end_time();
}