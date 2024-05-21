#include "engine_system.h"

bool Engine_System::SpawnObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = {int(obj->transform.Position.x/SPACE_PER_GRID_X) , int(obj->transform.Position.y/SPACE_PER_GRID_Y)};
  printf("hazza");
  if (physics.AddObject(GRID_POSITION.x, GRID_POSITION.y, obj))
    return true;

  return false;
}

bool Engine_System::DestroyObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = {int(obj->transform.Position.x/SPACE_PER_GRID_X) , int(obj->transform.Position.y/SPACE_PER_GRID_Y)};

  H_Sphere found_obj = physics.RemoveObject(GRID_POSITION.x, GRID_POSITION.y, obj);
  if(found_obj != nullptr){
    delete found_obj;
    return true;
  }

  return false;
}

Engine_System::Engine_System()
{
  srand(time(0));
  printf("Started Initialization: Init, window, and renderer\n");
  SDL_Init(SDL_INIT_EVERYTHING);
  window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y, SDL_WINDOW_ALLOW_HIGHDPI);
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  printf("Finished Initialization: Init, window, and renderer\n");
  printf("Started Initialization: Physics, Time, InputHandler\n");
  physics = Physics();
  timeHandler = Time::GetInstance();
  inputHandler = Input::GetInstance();
  printf("Finished Initialization: Physics, Time, InputHandler\n");
  
  
  printf("Started Initialization: Camera\n");
  camera = Camera(window, renderer);
  camera.SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);

  printf("Finished Initialization: Camera\n");

  RigidCount = 0;

  
  printf("Started Initialization: RenderObjects\n");
  RigidObjects = physics.Get_Objects();
  printf("Size: %i\n", sizeof(RigidObjects));
  for(int i = 0; i < GRID_Y; i++){
    for(int j = 0; j < GRID_X; j++){
      printf("x: %i y: %i\n", j, i);
      for(int k = 0; k < RigidObjects[i][j].size; k++){
        printf("obj#: %i\n", k);
        RenderObjects.push_back(RigidObjects[i][j].objects[k]);
      }
    }
  }
  printf("Finished Initialization: RenderObjects\n");
}
Engine_System::~Engine_System(){


  SDL_DestroyWindow(window);
  SDL_DestroyRenderer(renderer);

  SDL_Quit();
  
}

int Engine_System::main_loop(){ 

  timeHandler->start_time();

  if (SDL_PollEvent(&windowEvent))
  {
    switch (windowEvent.type)
    {
      case SDL_QUIT:
        std::cout << "Exit!" << std::endl;
        return EXIT_SUCCESS;
      break;
    }
  }
  
  inputHandler->Update();


  if(inputHandler->GetKey(SDL_SCANCODE_W)){
    printf("W pressed!\n");
    SpawnObject(new Sphere(10, {rand() % 600, rand() % 600}));
  }



  physics.Update_Object();
  camera.render(RenderObjects.data(), RenderObjects.size());





  timeHandler->end_time();

  
  return ES_CONTINUE_RUNNING;
}