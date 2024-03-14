#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"
#include "Object.h"
#include "string.h"
#pragma once

/*
  needs 
  collision detection
  collision response
  rotation
*/
#define GRID_X 16
#define GRID_Y 9

#define DEFAULT_GRID_SIZE 10

// Physics need physical objects
// Each grid will have array of pointers to objects as well as a count for the number of items in the grid
struct Grid
{
  H_Object *objects;
  int size = 0;
  int lastIndex = 0;
};

class Physics{
private:


  //Dividing the scene into grids for computational efficiency
  Grid bodies[GRID_X][GRID_Y] = {nullptr};
  union{
    struct{
      double sizex;
      double sizey;

    };
    double size[2];
  };

  H_Object* resize_grid(Grid*, int);



public:


  Physics();
  ~Physics();
  void Update_Objects();
  void Resolve_Collision(Object*, Object*);

  void AddObject(int, int, H_Object);
  void RemoveObject(int, int, H_Object);
};

