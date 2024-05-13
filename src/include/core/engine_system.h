#pragma once
#include "Physics.h"
#include "scene.h"
#include "time.h"
#include "Camera.h"
#include "Input.h"
#include <SDL2/SDL.h>
#include <thread>

#define ES_CONTINUE_RUNNING 1
class Engine_System{
  //This will be where the loops of the function will go, with the main.cpp holding EVERYTHING together
private:
  Physics physics;
  Time* time;
  Input* inputHandler;
  Camera camera;
  
  //All objects, even ones without physics
  int RenderCount;
  ObjectArray RenderObjects;

  //Objects in the physics class
  int RigidCount;
  ObjectArray RigidObjects;

  SDL_Window* window;
  SDL_Renderer* renderer;

  SDL_Event windowEvent;

//  object* StaticObjects;
  
public:
  int main_loop();
  

  Engine_System();
  ~Engine_System();
};