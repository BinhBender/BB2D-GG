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
#include <box2d/box2d.h>
#include <SDL2/SDL.h>
#include <thread>
#include <vector>
#define ES_CONTINUE_RUNNING 1
#define ES_STOP_RUNNING 0

#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}

class Engine_System{
private:
  Physics _physics;
  Time*   _timeHandler;
  Input*  _inputHandler;
  Camera*  _camera;
  //All objects, even ones without physics
  std::vector<b2Body> RenderObjects;

  //Objects in the physics class
  
  //Camera Resolution
  int _resolutionX;
  int _resolutionY;

  void box2Dinit();

  Engine_System();


  
public:
  int main_loop();
  int init();
  SDL_Event windowEvent;
  SDL_Window* window;
  SDL_Renderer* renderer;
   
  bool SpawnObject(H_Sphere);
  bool DestroyObject(H_Sphere);
  

  Engine_System(uint32_t Resolution_X, uint32_t Resolution_Y);
  ~Engine_System();
};