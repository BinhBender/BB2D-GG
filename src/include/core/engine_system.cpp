#include "engine_system.h"

Engine_System::Engine_System(){
  SDL_Init(SDL_INIT_EVERYTHING);
  window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y, SDL_WINDOW_ALLOW_HIGHDPI);
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

  physics = Physics();
  time = Time::GetInstance();
  inputHandler = Input::GetInstance();
  
  camera = Camera(window, renderer);
  camera.SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);


  RenderCount = 0;
  RigidCount = 0;


}
Engine_System::~Engine_System(){


  SDL_DestroyWindow(window);
  SDL_DestroyRenderer(renderer);

  SDL_Quit();
  
}

int Engine_System::main_loop(){ 

  time->start_time();

  if (SDL_PollEvent(&windowEvent))
  {
    switch (windowEvent.type)
    {
      case SDL_QUIT:
        std::cout << "Exit!" << std::endl;
        return EXIT_SUCCESS;
    }
  }
  
  inputHandler->Update();

  physics.Update_Object();
  camera.render(RenderObjects, RenderCount);





  time->end_time();

  
  return ES_CONTINUE_RUNNING;
}