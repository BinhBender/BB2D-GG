#pragma once
#include <cmath>
#include "../SDL2/SDL.h"
#include "bmath.h"
#include "Physics.h"
#include "Object.h"
#include <vector>
#define CAMERA_FPS_30 30
#define CAMERA_FPS_60 60
#define CAMERA_FPS_144 144
#define CAMERA_FPS_UNLIMITED -1

#define CAMERA_RESOLUTION_X 1280
#define CAMERA_RESOLUTION_Y 720

class Camera{
private:
  int FPS = CAMERA_FPS_60;
  float scaleX;
  float scaleY;
  SDL_Window* window;
  SDL_Renderer* renderer;

public:

  Camera();
  Camera(SDL_Window*, SDL_Renderer*);

  void render(ObjectArray, int);

  void DrawCircles(ObjectArray, int);
  void DrawCircle(SDL_Renderer * renderer, int32_t centreX, int32_t centreY, int32_t radius);

  void SetScale(float, float);

  void SetFPS(int);
  void SetFOV(int);
};