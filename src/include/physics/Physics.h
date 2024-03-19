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

#define DEFAULT_GRID_CONTAINER_SIZE 10

#define MAX_GRID_GROUP_AMOUNT 9
/*
 | | | | | | |
 | |O|O|O| | |
 | |O|O|O| | |
 | |O|O|O| | |
 | | | | | | |
*/
#define _SPHERE
#ifdef _MESH
  #define OBJ_TYPE Mesh
  #define H_OBJ_TYPE H_Mesh

#endif
#ifdef _RECTANGLE

  #define OBJ_TYPE Rectangle
  #define H_OBJ_TYPE H_Rectangle
#endif
#ifdef _SPHERE
  #define OBJ_TYPE Sphere
  #define H_OBJ_TYPE H_Sphere
#endif
// Physics need physical OBJ_TYPE
// Each grid will have array of pointers to OBJ_TYPE as well as a count for the number of items in the grid
struct Grid
{
  H_OBJ_TYPE *objects;  // Array of the OBJ_TYPE
  int size = 0;       // Max size of the array, Default: 10, doubles everytime it reaches max.
  int lastIndex = 0;  // Keeps track of the index of the last OBJ_TYPE added.fbfg
};
typedef Grid* H_Grid;

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

  H_OBJ_TYPE* resize_grid(Grid*, int);
  void Get_Surrounding_Grid(int, int);

public:


  Physics();
  ~Physics();
  void Update_Object();
  void Resolve_Collision(OBJ_TYPE*, OBJ_TYPE*);

  void AddObject(int, int, H_OBJ_TYPE);
  void RemoveObject(int, int, H_OBJ_TYPE);
};

