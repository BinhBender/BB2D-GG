#include "Physics.h"
#include "scene.h"
#include "time.h"
#include "Camera.h"
#include "Input.h"
#include <SDL2/SDL.h>



class Engine_System{
  //This will be where the loops of the function will go, with the main.cpp holding EVERYTHING together
private:
  Physics physics;
  Time* time;
  Input* inputHandler;
  Camera camera;
  
  //All objects, even ones without physics
  object* RenderObjects;

  //Objects in the physics class
  object* RigidObjects;

  SDL_Window* window;
  SDL_Renderer* renderer;

  SDL_Event windowEvent;

//  object* StaticObjects;

  
public:
  void main_loop();
  //Order 
  /*
    Timer starts
    Render
    Physics
    ...

      
    Time ends


  */
  Engine_System();
  ~Engine_System();
};