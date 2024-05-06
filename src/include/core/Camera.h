#pragma once
#include <cmath>
#include "bmath.h"
#include "../SDL2/SDL.h"
#include "Physics.h"
#include "Object.h"
#include "scene.h"

#define CAMERA_FPS_30 30
#define CAMERA_FPS_60 60
#define CAMERA_FPS_144 144
#define CAMERA_FPS_UNLIMITED -1

#define FLAT_VIEW 0
#define LIGHTING 1

#define CAMERA_RESOLUTION_X 720
#define CAMERA_RESOLUTION_Y 1280

class Camera{
private:
  int FPS = CAMERA_FPS_60;
  SDL_Window* window;
  SDL_Renderer* renderer;

public:
  Camera(SDL_Window*, SDL_Renderer*);

  void render(void*, int);

  void DrawCircles(H_Sphere*, int);
  void DrawCircle(H_Sphere);


};