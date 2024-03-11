#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"
#include "Object.h"
#pragma once

/*
  needs 
  collision detection
  collision response
  rotation
*/
#define GRID_X 16
#define GRID_Y 9

//Physics need physical objects

class Physics{
  //Each grid will have array of pointers to objects as well as a count for the number of items in the grid
  struct Grid{
    Object** objects;
    int  size;
  };

  //Dividing the scene into grids for computational efficiency
  Grid bodies[GRID_X][GRID_Y] = {0};
  union{
    struct{
      double sizex;
      double sizey;

    };
    double size[2];
  };
public:


  Physics();
  void Update_Objects();
  void Resolve_Collision(Object*, Object*);
};

