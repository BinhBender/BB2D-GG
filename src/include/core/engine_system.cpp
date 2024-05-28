#include "engine_system.h"

bool Engine_System::SpawnObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = physics.FindGridIndex(obj->transform.Position);
  if (physics.AddObject({GRID_POSITION.x, GRID_POSITION.y}, obj))
    RenderObjects.push_back(obj);
    return true;

  return false;
}

bool Engine_System::DestroyObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = {int(obj->transform.Position.x/SPACE_PER_GRID_X) , int(obj->transform.Position.y/SPACE_PER_GRID_Y)};

  H_Sphere found_obj = physics.RemoveObject({GRID_POSITION.x, GRID_POSITION.y}, obj);
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

  delete Time::GetInstance();
  delete Input::GetInstance();
  
  
}

int Engine_System::main_loop(){ 

  timeHandler->start_time();


  
  inputHandler->Update();

  if(inputHandler->GetKey(SDL_SCANCODE_W)){
    printf("W pressed\n");

  }

  physics.Update_Object();
  camera.render(RenderObjects.data(), RenderObjects.size());


  timeHandler->end_time();

  
  return ES_CONTINUE_RUNNING;
}

int Engine_System::init()
{
  object s = new Sphere(10, {400, 534});
  s->Name = std::string("Hello");
  printf("%s\n",s->Name );
  SpawnObject(s);
  return 0;
}
