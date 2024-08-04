#pragma once
#include <SDL2/SDL.h>

#include "bmath.h"
#include "Physics.h"
#include "Object.h"
#include "time.h"
#include <cmath>
#include <vector>

#define CAMERA_FPS_30 30
#define CAMERA_FPS_60 60
#define CAMERA_FPS_144 144
#define CAMERA_FPS_UNLIMITED -1
#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}


class Camera{
private:
  Time* t;
  int FPS = CAMERA_FPS_60;
  float scaleX;
  float scaleY;

  SDL_Texture* defaultCircleFilled;

  SDL_Window* window;
  SDL_Renderer* renderer;

  SDL_Texture* create_circle_texture(int diameter);
public:
  
  int RESOLUTION_X;
  int RESOLUTION_Y;

  Camera();
  Camera(SDL_Window*, SDL_Renderer*);
  ~Camera();

  void render(Object* list, size_t size);

  void DrawForces(Object* list, size_t size);

  void DrawCircle(SDL_Renderer * renderer,const Object& obj);
  void DrawCircles(Object*, int count);

  void DrawCircleFilled(SDL_Renderer* renderer,const Object& obj);
  void DrawCirclesFilled(Object*, size_t size);

  void SetScale(float, float);

  void SetFPS(int);
  void SetFOV(int);
};