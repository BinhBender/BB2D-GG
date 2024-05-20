#include "engine_system.h"

bool Engine_System::SpawnObject(H_Sphere)
{
  SDL_Point GRID_POSITION = {int(obj->transform.Position.x/SPACE_PER_GRID_X) , int(obj->transform.Position.y/SPACE_PER_GRID_Y)};

  H_Grid target_grid = RigidObjects[GRID_POSITION.x][GRID_POSITION.y];

  physics.AddObject()
  return false;
}

bool Engine_System::DestroyObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = {int(obj->transform.Position.x/SPACE_PER_GRID_X) , int(obj->transform.Position.y/SPACE_PER_GRID_Y)};

  H_Grid target_grid = RigidObjects[GRID_POSITION.x][GRID_POSITION.y];

  H_Sphere found_obj = physics.RemoveObject(GRID_POSITION.x, GRID_POSITION.y, obj);
  if(found_obj != nullptr){
    delete found_obj;
    return true;
  }

  return false;
}

Engine_System::Engine_System()
{
  SDL_Init(SDL_INIT_EVERYTHING);
  window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y, SDL_WINDOW_ALLOW_HIGHDPI);
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

  physics = Physics();
  time = Time::GetInstance();
  inputHandler = Input::GetInstance();
  
  camera = Camera(window, renderer);
  camera.SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);


  RigidCount = 0;

  RigidObjects = physics.Get_Objects();

  for(int i = 0; i < GRID_Y; i++){
    for(int j = 0; j < GRID_X; j++){
      for(int k = 0; k < RigidObjects[i][j].size; k++){
        RenderObjects.push_back(
          {
          object_type::rigid, 
          RigidObjects[i][j].objects[k]
          }
        );


      }
    }
  }
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
  camera.render(RenderObjects, RenderObjects.size());





  time->end_time();

  
  return ES_CONTINUE_RUNNING;
}