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
  Physics* _physics;
  Camera*  _camera;
  Time*   _timeHandler;
  Input*  _inputHandler;

  SDL_Window* window;
  SDL_Renderer* renderer;
  SDL_Event windowEvent;

  std::vector<Object*>* ObjectList;
  Engine_System();

//System Variables
  SDL_DisplayMode display_variables;

  SDL_Point system_max_resolution;
  SDL_Point current_resolution;

  SDL_WindowFlags windowflags;
  SDL_RendererFlags rendererflags;
  
public:


  int main_loop();
  int init();
  
  bool SetRendererFlags(int);
  bool SetWindowFlags(int);

  inline Object* SpawnCircle(Vector2D _pos, float _radius)
  {
    return _physics->CreateCircle(_pos, _radius);
  }
  inline Object* SpawnRectangle(Vector2D _pos, Vector2D _wh)
  {
    return _physics->CreateRect(_pos, _wh);
  }
  inline Object* SpawnPolygon(Vector2D _pos, b2Vec2* _points, size_t _size)
  {
    return _physics->CreatePolygon(_pos, _points, _size);
  }
  inline Object* SpawnEdge(Vector2D _pointA, Vector2D _pointB)
  {
    return _physics->CreateEdge(_pointA, _pointB);
  }
  
  bool DestroyObject(Object*);
  

  Engine_System(uint32_t Resolution_X, uint32_t Resolution_Y);
  ~Engine_System();
};