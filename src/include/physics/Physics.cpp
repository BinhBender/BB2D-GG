#include "Physics.h"

Physics::Physics()
{
  int sizex = GRID_X;
  int sizey = GRID_Y;
  for (int i = 0; i < GRID_X; i++)
  {
    for (int j = 0; j < GRID_Y; j++)
    {
      bodies[i][j] = { new H_Object[DEFAULT_GRID_SIZE], DEFAULT_GRID_SIZE, NULL };
    }
  }
}

Physics::~Physics()
{
  //deallocates the objects in the grid
  int grid_size = 0;
  H_Object *grid_objects = nullptr;
  for (int i = 0; i < GRID_Y; i++)
    {
      for (int j = 0; j < GRID_X; j++)
    {
      grid_size = bodies[i][j].size;
      grid_objects = bodies[i][j].objects;
      for (int k = 0; k < grid_size; k++)
      {
        if (grid_objects[k] != nullptr)
        {
          delete grid_objects[k];
        }
      }
      delete[] grid_objects;
    }
  }
}

/// @brief Takes in a pointer to a specific grid in "bodies" and creates a new array of a specified size, returning early if it is less than the size of the original grid
/// @param grid Pointer to a grid in bodies in the Physics class
/// @param size The desired reallocated size
H_Object *Physics::resize_grid(Grid *grid, int size)
{
  //Check if the specified size is less than the current size
  if(size < grid->size) return;
  
  //Allocate a new array for objects
  H_Object *new_grid_object_container = new H_Object[size];

  //Copy the data from the old array to the new one
  memcpy(new_grid_object_container, grid->objects, sizeof(H_Object) * grid->size);

  //Change the size
  grid->size = size;

  //Delete the old one
  delete[] grid->objects;

  //Reassign the new one
  grid->objects = new_grid_object_container;
  return grid->objects;
}

void Physics::Get_Surrounding_Grid(int x, int y){
  // Collect
  Vector2D startGrid = {Clamp(0, GRID_X, x - 1), Clamp(0, GRID_Y, y - 1)};
  Vector2D endGrid = {Clamp(0, GRID_X, x + 1), Clamp(0, GRID_Y, y + 1)};

  // Get the grids that is surrounding the objects

  memset(sub_bodies, 0, sizeof(Grid *) * 9);
  int grid_counter = 0;
  for (int Grid_y = startGrid.y; Grid_y < endGrid.y; Grid_y++)
  {
    for (int Grid_x = startGrid.x; Grid_x < endGrid.x; Grid_x++)
    {
      sub_bodies[grid_counter] = &bodies[Grid_y][Grid_x];
    }
  }
}
void Physics::Update_Objects()
{
  for(int i = 0; i < GRID_Y; i++){
    for(int j = 0; j < GRID_X; j++){
      Get_Surrounding_Grid(j, i); // After this runs, "sub_bodies" updates
      for (int k = 0; k < bodies[i][j].size; k++)
      {

        // When updating there are 3 steps
        
        //  Detect Collision
          /*How do we do this for different shapes?
            Square is different from sphere/rectangle/trapizoid
            What happens when it moves into multiple objects at once?
          */

        // Then move to the appropriate spot

        // Fix the objects
      }
    }
  }
}

void Physics::Resolve_Collision(Object *objectA, Object *objectB)
{ 

}

void Physics::AddObject(int x_coord, int y_coord, H_Object obj)
{
  Grid *grid = &bodies[x_coord][y_coord];
  if (grid->lastIndex > grid->size - 1)
  {
    resize_grid(grid, grid->size * 2);
  }

  grid->objects[grid->lastIndex] = obj;

  grid->lastIndex++;
}

void Physics::RemoveObject(int x_coord, int y_coord, H_Object obj)
{
  Grid *grid = &bodies[x_coord][y_coord];
  int grid_size = grid->size;
  for (int i = 0; i < grid_size; i++)
  {
    if(obj == grid->objects[i]){
      //Remove obj from list
      grid->objects[i] = nullptr;
      //Shift all objects back
        //Apparently memcpy/memset is faster due to asm optimization 
      memcpy(grid->objects + i, grid->objects + i + 1, sizeof(H_Object) * (grid_size - i - 1));
      //
      memset(grid->objects + grid_size-i-1, 0, sizeof(H_Object));
    }
  }
}
