#include "engine_system.h"


Engine_System::Engine_System()
{
  SDL_GetWindowSizeInPixels(window, &system_max_resolution.x,&system_max_resolution.y);
  SDL_GetDesktopDisplayMode(0, &display_variables);
  SetWindowFlags(SDL_WindowFlags::SDL_WINDOW_ALLOW_HIGHDPI);
  SetRendererFlags(SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  
}
Engine_System::Engine_System(uint32_t Resolution_X, uint32_t Resolution_Y) : Engine_System()
{
  ASSERT(Resolution_X > 0 && Resolution_Y > 0, "Resolution is bad: width %i, height %i\n", Resolution_X, Resolution_Y);
  current_resolution = SDL_Point{Resolution_X, Resolution_Y};
  
}
Engine_System::~Engine_System()
{
  SDL_DestroyWindow(window);
  SDL_DestroyRenderer(renderer);
  delete _timeHandler;
  delete _inputHandler;
  delete _physics;
  delete _camera;
}

bool Engine_System::SetRendererFlags(int _flags)
{
  rendererflags = (SDL_RendererFlags)_flags;
  return true;
}

bool Engine_System::SetWindowFlags(int _flags)
{
  windowflags = (SDL_WindowFlags)_flags;
  return true;
}


bool Engine_System::DestroyObject(Object* obj)
{
  delete _physics->RemoveObject(obj);

  return true;
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

  _physics->Update_Object();
  //printf("ObjectList Size: %i\n", ObjectList->size());
  _camera->render(ObjectList->data(), ObjectList->size());
  _timeHandler->end_time();


  printf("FPS: %4.0f\r", 1/_timeHandler->deltaTime);
  
  return ES_CONTINUE_RUNNING;
}

int Engine_System::init()
{
  srand(time(0));
  
  printf("Started Initialization: Init, window, and renderer\n");
  SDL_Init(SDL_INIT_EVERYTHING);
  window = SDL_CreateWindow("Hello SDL WORLD", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, current_resolution.x, current_resolution.y, windowflags);
  
  renderer = SDL_CreateRenderer(window, -1, rendererflags);
  printf("Finished Initialization: Init, window, and renderer\n");
  
  printf("Started Initialization: Time, _inputHandler\n");
  _timeHandler = Time::GetInstance();
  _inputHandler = Input::GetInstance();
  printf("Finished Initialization: Time, _inputHandler\n");
  
  
  printf("Started Initialization: Camera\n");
  _camera = new Camera(window, renderer);
  printf("Finished Initialization: Camera\n");
  printf("Started Initialization: Physics\n");
  _physics = new Physics();
  printf("Finished Initialization: Physics\n");
  
  ObjectList = _physics->GetObjectList();

  ASSERT(_timeHandler != nullptr, "_timeHandler is nullptr\n");
  ASSERT(_inputHandler != nullptr, "_inputHandler is nullptr\n");

  _physics->SetBorders({0,0}, {1280/2, 720/2});
  return 0;
}


