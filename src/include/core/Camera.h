#pragma once
#include <cmath>
#include "bmath.h"
#define CAMERA_FPS_30 30
#define CAMERA_FPS_60 60
#define CAMERA_FPS_144 144
#define CAMERA_FPS_UNLIMITED -1

#define CAMERA_FOV_45 45
#define CAMERA_FOV_90 90
#define CAMERA_FOV_103 144
#define CAMERA_FOV_UNLIMITED -1

/*
MODES OF VIEWING
  This is to allow multiple versions of the camera to work 
    by either doing a flat light/2D view of the render or 
    lighting for 3D viewing. Allowed for further rendering added on.
*/
#define FLAT_VIEW 0
#define LIGHTING 1



class Camera{
private:
  int FPS = CAMERA_FPS_60;
  int FOV = CAMERA_FOV_90;

public:
  void render(float*, int);
};