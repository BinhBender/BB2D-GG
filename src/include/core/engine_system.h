/*
  engine_system.h

  Glues all of the classes together and provides the main loop that addresses the 
    inputs
    rendering
    physics
  
  Will not be responsible for deallocating game objects.
  Will only deallocate SDL processes


*/

#pragma once
#include "Physics.h"
#include "scene.h"
#include "Time.h"
#include "Camera.h"
#include "Input.h"
#include <random>
#include <SDL2/SDL.h>
#include <thread>
#include <vector>
#define ES_CONTINUE_RUNNING 1
#define ES_STOP_RUNNING 0


class Engine_System{
private:
  Physics physics;
  Time* timeHandler;
  Input* inputHandler;
  Camera camera;
  //All objects, even ones without physics
  std::vector<object> RenderObjects;

  //Objects in the physics class
  int RigidCount;
  Grid (*RigidObjects)[GRID_X];
  

  
public:
  int main_loop();
  int init();
  SDL_Event windowEvent;
  SDL_Window* window;
  SDL_Renderer* renderer;
   
  bool SpawnObject(H_Sphere);
  bool DestroyObject(H_Sphere);

  Engine_System();
  ~Engine_System();
};