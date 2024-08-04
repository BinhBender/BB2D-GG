#include "engine_system.h"

void Engine_System::box2Dinit()
{
  b2Vec2 gravity(0.0f, 0.0f);
  b2World world(gravity);

  
}

Engine_System::Engine_System()
{
  
}
Engine_System::Engine_System(uint32_t Resolution_X, uint32_t Resolution_Y)
{
  _resolutionX = Resolution_X;
  _resolutionY = Resolution_Y;

}
Engine_System::~Engine_System()
{
  delete _timeHandler;
  delete _inputHandler;
  delete _camera;
}

bool Engine_System::SpawnObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = _physics.FindGridIndex(obj->transform.Position);
  if (_physics.AddObject({GRID_POSITION.x, GRID_POSITION.y}, obj)){

    RenderObjects.push_back(obj);
    return true;
  }

  return false;
}

bool Engine_System::DestroyObject(H_Sphere obj)
{
  SDL_Point GRID_POSITION = {int(obj->transform.Position.x/SPACE_PER_GRID_X) , int(obj->transform.Position.y/SPACE_PER_GRID_Y)};

  H_Sphere found_obj = _physics.RemoveObject({GRID_POSITION.x, GRID_POSITION.y}, obj);
  if(found_obj != nullptr){
    delete found_obj;
    return true;
  }

  return false;
}
int Engine_System::main_loop(){ 

  _timeHandler->start_time();

  while (SDL_PollEvent(&windowEvent) != 0)
  {
    if(windowEvent.type == SDL_QUIT)
    {
      std::cout << "Exit!" << std::endl;
      return ES_STOP_RUNNING;
    }
  }

  

  if(_inputHandler->GetKeyUp(SDL_SCANCODE_W)){
    printf("W pressed!");
    Sphere* s = new Sphere(10, {300, 300});
    s->force = {1, 1};
    SpawnObject(s);
    
  }
  _inputHandler->Update();
  _physics.Update_Object();


  _camera->render(RenderObjects.data(), RenderObjects.size());


  _timeHandler->end_time();
  printf("FPS: %4.0f\r", 1/_timeHandler->deltaTime);
  
  return ES_CONTINUE_RUNNING;
}

int Engine_System::init()
{
  srand(time(0));
  printf("Started Initialization: Init, window, and renderer\n");
  SDL_Init(SDL_INIT_EVERYTHING);
  window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, _resolutionX, _resolutionY, SDL_WINDOW_ALLOW_HIGHDPI);
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
  printf("Finished Initialization: Init, window, and renderer\n");
  
  printf("Started Initialization: _physics, Time, _inputHandler\n");
  _timeHandler = Time::GetInstance();
  _inputHandler = Input::GetInstance();
  printf("Finished Initialization: _physics, Time, _inputHandler\n");
  
  
  printf("Started Initialization: Camera\n");
  _camera = new Camera(window, renderer);
  _camera->RESOLUTION_X = _resolutionX;
  _camera->RESOLUTION_Y = _resolutionY;
  _camera->SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);

  printf("Finished Initialization: Camera\n");

  RigidCount = 0;

  
  printf("Started Initialization: RenderObjects\n");
  RigidObjects = _physics.Get_Objects();
  for(int i = 0; i < GRID_Y; i++){
    for(int j = 0; j < GRID_X; j++){
      for(int k = 0; k < RigidObjects[i][j].size; k++){
        
        RenderObjects.push_back(RigidObjects[i][j].objects[k]);
      }
    }
  }
  
  printf("Finished Initialization: RenderObjects\n");


  return 0;
}


