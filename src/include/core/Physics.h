#pragma once

#include "Bmath.h"
#include "Vector2D.h"
#include "Transform.h"
#include "Object.h"
#include "string.h"
#include <iostream>

//#define PHYSICS_DEBUG
#ifdef PHYSICS_DEBUG


#define PRINT_ALL_DEBUG std::cout << "Y: " << i << " X: " << j << '\n';
#define PRINT_DECONSTRUCTOR(x, index) std::cout << (index + 1) << ((index % 6 == 5) ? "\n" : ", ");
#else
#define PRINT_ALL_DEBUG
#define PRINT_DECONSTRUCTOR(x, index)
#endif

#define WORLD_SPACE_LIMIT_X 1600
#define WORLD_SPACE_LIMIT_Y 900

#define GRID_X 16 //The amount of grid spaces on the x
#define GRID_Y 9  //The amount of grid spaces on the y

#define SPACE_PER_GRID_X WORLD_SPACE_LIMIT_X / GRID_X
#define SPACE_PER_GRID_Y WORLD_SPACE_LIMIT_Y / GRID_Y

#define DEFAULT_GRID_CONTAINER_SIZE 10
#define MAX_GRID_GROUP_AMOUNT 9
/*
 | | | | | | |
 | |1|2|3| | |
 | |4|5|6| | |
 | |7|8|9| | |
 | | | | | | |
*/
// Each grid will have array of pointers to OBJ_TYPE as well as a count for the number of items in the grid


typedef Sphere* object;
typedef object* ObjectArray;


struct Grid
{
  ObjectArray objects;   // Array of the OBJ_TYPE
  int max_size = 0;      // Max size of the array, Default: 10, doubles everytime it reaches max.
  int size = 0; // Keeps track of the index of the last OBJ_TYPE added.
};

typedef Grid* H_Grid;
class Physics{
private:


  //Dividing the scene into grids for computational efficiency
  Grid bodies[GRID_Y][GRID_X];

  H_Grid sub_bodies[9] = {nullptr};


  void* resize_grid(Grid*, int);
  bool Get_Surrounding_Grid(int, int);
  H_Sphere sphere_collision(const H_Grid *, H_Sphere sph_obj);
  H_Mesh_OBJ mesh_collision(const H_Grid *, H_Mesh_OBJ);
  H_Rectangle rectangle_collision(const H_Grid *, H_Rectangle);

  void* detect_collision();
  void MoveObject(int,int, object);
  

  //temp bounding box to keep objects inside
  void BoundingBox(object);
public:

  Physics();
  ~Physics();

  
  #pragma GCC diagnostic ignored "-Wnarrowing"
  void Update_Object();

  void Resolve_Collision(OBJ_TYPE*, OBJ_TYPE*, float);

  bool AddObject(int, int, object);
  object RemoveObject(int, int, object);

  object GetObject(int, int, int);

  void PrintGrid(int, int);
  
  void PrintGridAll();
};

