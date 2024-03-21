#pragma once

#include "bmath.h"
#include "Vector2D.h"
#include "Transform.h"
#include "Object.h"
#include "string.h"

#include <iostream>

#define PHYSICS_DEBUG
#ifdef PHYSICS_DEBUG


#define PRINT_ALL_DEBUG std::cout << "Y: " << i << " X: " << j << '\n';
#define PRINT_DECONSTRUCTOR if (k % 6 == 0)\
{\
  std::cout << "\n    ";\
}\
std::cout << (k + 1) << ((k == grid_size - 1) ? "" : ", ");
#else
#define PRINT_ALL_DEBUG
#define PRINT_DECONSTRUCTOR
#endif
/*
  needs 
  collision detection
  collision response
  rotation
*/

#define GRID_X 16 //The amount of grid spaces on the x
#define GRID_Y 9  //The amount of grid spaces on the y

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
typedef void* object;



struct Grid
{
  object* objects;   // Array of the OBJ_TYPE
  int max_size = 0;      // Max size of the array, Default: 10, doubles everytime it reaches max.
  int size = 0; // Keeps track of the index of the last OBJ_TYPE added.
};

typedef Grid* H_Grid;
class Physics{
private:


  //Dividing the scene into grids for computational efficiency
  Grid bodies[GRID_Y][GRID_X] = {0};

  H_Grid sub_bodies[9] = {nullptr};
  union{
    struct{
      int sizex;
      int sizey;

    };
    int size[2];
  };

  void* resize_grid(Grid*, int);
  void Get_Surrounding_Grid(int, int);
  H_Sphere sphere_collision(const H_Grid *, H_Sphere sph_obj);
  H_Mesh_OBJ mesh_collision(const H_Grid *, H_Mesh_OBJ);
  H_Rectangle rectangle_collision(const H_Grid *, H_Rectangle);

public:
  void* detect_collision();



  Physics();
  ~Physics();
  void Update_Object();
  void Resolve_Collision(OBJ_TYPE*, OBJ_TYPE*);

  void AddObject(int, int, object);
  object RemoveObject(int, int, object);

  object GetObject(int, int, int);

  void PrintGrid(int, int);
  void PrintGridAll();
};

