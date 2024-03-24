#include "Physics.h"

Physics::Physics()
{
  int sizey = GRID_Y;
  int sizex = GRID_X;
  for (int i = 0; i < GRID_Y; i++)
  {
    for (int j = 0; j < GRID_X; j++)
    {
      bodies[i][j] = { new void*[DEFAULT_GRID_CONTAINER_SIZE], DEFAULT_GRID_CONTAINER_SIZE, 0 };
    
    }
  }
  
}

Physics::~Physics()
{
  //deallocates the objects in the grid
  int grid_size = 0;
  object* grid_objects = nullptr;
  //std::cout << "Deleting: ";
  for (int i = 0; i < GRID_Y; i++)
  {
    for (int j = 0; j < GRID_X; j++)
    {
      //PRINT_DECONSTRUCTOR
      grid_size = bodies[i][j].size;
      grid_objects = bodies[i][j].objects;
      //Deleting individual grid objects
      for (int k = 0; k < grid_size; k++)
      {
        if (grid_objects[k] != nullptr)
        {
          PRINT_DECONSTRUCTOR
          delete grid_objects[k];
        }
      }
      //Deletes grid
      delete[] grid_objects;
    }
  }
}

/// @brief Takes in a pointer to a specific grid in "bodies" and creates a new array of a specified max_size, returning early if it is less than the max_size of the original grid
/// @param grid Pointer to a grid in bodies in the Physics class
/// @param max_size The desired reallocated max_size
void* Physics::resize_grid(Grid *grid, int max_size)
{
  //Check if the specified max_size is less than the current max_size
  if(max_size < grid->max_size) return nullptr;
  
  //Allocate a new array for objects
  void** new_grid_object_container = new void*[max_size];

  //Copy the data from the old array to the new one
  memcpy(new_grid_object_container, grid->objects, sizeof(object) * grid->max_size);

  //Change the max_size
  grid->max_size = max_size;

  //Delete the old one
  delete[] grid->objects;

  //Reassign the new one
  grid->objects = new_grid_object_container;
  return grid->objects;
}

/// @brief Checks the radius of a given sphere with the raidus other spheres inside of other_bodies and if they
/// @param other_bodies 
/// @param sph_obj 
/// @return 
H_Sphere Physics::sphere_collision(const H_Grid *other_bodies, H_Sphere sph_obj)
{
  //Set the closest distance to infinite because we assume that 
  float closest_distance = __builtin_inff();

  H_Sphere collided = nullptr;
  for (int i = 0; i < MAX_GRID_GROUP_AMOUNT; i++)
  {
    if (other_bodies[i] != nullptr)
    {
      int max_size = other_bodies[i]->size;

      for (int j = 0; j < max_size; j++)
      {
        //item
        Sphere* object_to_check = (Sphere*)(other_bodies[i]->objects[i]);

        //Distance between the objects
        float dist = Distance(sph_obj->FuturePosition(), object_to_check->FuturePosition());

        if (object_to_check->Radius + sph_obj->Radius < dist && closest_distance > dist)
        {
          // Collision!         
          closest_distance = dist;
          collided = object_to_check;
        }

        
      }
    }
  }

  return collided;
}

H_Mesh_OBJ Physics::mesh_collision(const H_Grid *other_bodies, H_Mesh_OBJ obj)
{

}

H_Rectangle Physics::rectangle_collision(const H_Grid *other_bodies, H_Rectangle obj)
{
}

/// @brief 
/// @param x The specified center grid
/// @param y 
void Physics::Get_Surrounding_Grid(int x, int y){
  // Collect
  Vector2D startGrid = {B_Clamp(0, GRID_X, x - 1), B_Clamp(0, GRID_Y, y - 1)};
  Vector2D endGrid = {B_Clamp(0, GRID_X, x + 1), B_Clamp(0, GRID_Y, y + 1)};

  //Zero out sub_bodies
  memset(sub_bodies, 0, sizeof(Grid *) * 9);
  int grid_counter = 0;
  // Get the grids that is surrounding the objects
  for (int Grid_y = startGrid.y; Grid_y < endGrid.y; Grid_y++)
  {
    for (int Grid_x = startGrid.x; Grid_x < endGrid.x; Grid_x++)
    {
      //
      sub_bodies[grid_counter] = &bodies[Grid_y][Grid_x];
    }
  }
}

/// @brief Main physics loop, should not be called more than once per frame.
void Physics::Update_Object()
{
  for(int i = 0; i < GRID_Y; i++){
    for(int j = 0; j < GRID_X; j++){
      Get_Surrounding_Grid(i, j); // After this runs, "sub_bodies" updates
      for (int k = 0; k < bodies[i][j].max_size; k++)
      {
        H_Sphere subject_obj = (Sphere *)(bodies[i][j].objects[k]);

        H_Sphere collided = sphere_collision(sub_bodies, subject_obj);

        if(collided != nullptr)
          Resolve_Collision(subject_obj, collided);
        
        subject_obj->Move();
        //TODO: update object grid coordinates here if it goes out of the bounds
      }
    }
  }
}

/// @brief How the object will behave after colliding with another object.
/// @param objectA 
/// @param objectB 
void Physics::Resolve_Collision(OBJ_TYPE *objectA, OBJ_TYPE *objectB)
{ 
  //Since there is "ghosting" of an object in collision, we have to find the positions of the objects AT the moment of collision. Next return the resulting force vector of the collision to both objects


}

/// @brief Given a coordinate point on the grid between the bounds append the object to the end of that grid list
/// @param x_coord The x coordinate on the grid to add in
/// @param y_coord The y coordinate on the grid to add in
/// @param obj The object to add 
void Physics::AddObject(int x_coord, int y_coord, object obj)
{
  if(obj == nullptr) return;
  H_Grid grid = &bodies[y_coord][x_coord];
  if (grid->size > grid->max_size - 1)
  {
    std::cout << "Resizing grid to " << (grid->max_size * 2) << std::endl;
    resize_grid(grid, grid->max_size * 2);
  }

  grid->objects[grid->size] = obj;

  grid->size++;
}

/// @brief 
/// @param x_coord 
/// @param y_coord 
/// @param obj
object Physics::RemoveObject(int x_coord, int y_coord, object obj)
{
  Grid *grid = &bodies[y_coord][x_coord];
  int grid_size = grid->max_size;
  object returningOBJ = nullptr;
  for (int i = 0; i < grid_size; i++)
  {
    if(obj == grid->objects[i]){
      //Remove obj from list
      returningOBJ = grid->objects[i];
      grid->objects[i] = nullptr;
      //Shift all objects back
        //Apparently memcpy/memset is faster due to asm optimization 
      memcpy(grid->objects + i, grid->objects + i + 1, sizeof(object) * (grid_size - i - 1));
      memset(grid->objects + grid->size, 0, sizeof(object));
    }
  }
  grid->size--;
  return returningOBJ;
}

object Physics::GetObject(int y, int x, int index)
{
  object obj = bodies[y][x].objects[index];
  return obj != nullptr ? obj : nullptr;
}

/// @brief Prints the address of the specified grid from "bodies" with the index, max_size, and objects.
/// @param x The x coordinate grid address
/// @param y The y coordinate grid address
void Physics::PrintGrid(int y , int x)
{
  std::cout << "\nX: " << x << " Y: "<< y << " Last index: " << bodies[y][x].size << ", max_size: " << bodies[y][x].max_size << '\n';
  std::cout << "     ";
  for (size_t i = 0; i < bodies[y][x].size; i++)
  {
    std::cout << bodies[y][x].objects[i] << " ";
    if((i + 1) % 6 == 0){
      std::cout << std::endl;
      std::cout << "     ";
    }
  }
  
}
/// @brief Prints the address of all grids from "bodies" with the index, max_size, and objects.
/// @param x The x coordinate grid address
/// @param y The y coordinate grid address
void Physics::PrintGridAll()
{
  for (int i = 0; i < GRID_Y; i++)
  {
    for (size_t j = 0; j < GRID_X; j++)
    {
      //PRINT_ALL_DEBUG
      PrintGrid(i,j);
    }
  }
}
