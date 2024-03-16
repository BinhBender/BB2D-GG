#pragma once

#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"
#include "Object.h"
#include "string.h"
#include "./utility/bmath.h"


/*
  needs 
  collision detection
  collision response
  rotation
*/
#define GRID_X 16
#define GRID_Y 9

#define DEFAULT_GRID_SIZE 10

#ifdef BOUNDED
  #define Bounds

#endif

// Physics need physical objects
// Each grid will have array of pointers to objects as well as a count for the number of items in the grid
struct Grid
{
  H_Object *objects;  // Array of the objects
  int size = 0;       // Max size of the array, Default: 10, doubles everytime it reaches max.
  int lastIndex = 0;  // Keeps track of the index of the last object added.
};

class Physics{
private:


  //Dividing the scene into grids for computational efficiency
  Grid bodies[GRID_Y][GRID_X] = {nullptr};


  Grid* sub_bodies[9] = {nullptr};
  union{
    struct{
      int sizex;
      int sizey;

    };
    int size[2];
  };

  H_Object* resize_grid(Grid*, int);
  void Get_Surrounding_Grid(int, int);

public:


  Physics();
  ~Physics();
  void Update_Objects();
  void Resolve_Collision(Object*, Object*);

  void AddObject(int, int, H_Object);
  void RemoveObject(int, int, H_Object);
};

