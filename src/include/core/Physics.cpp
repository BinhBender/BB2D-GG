#include "Physics.h"

int Physics::count = 0;
Physics* Physics::instance = nullptr;

Physics::Physics()
{
  for (int i = 0; i < GRID_Y; i++)
  {
    for (int j = 0; j < GRID_X; j++)
    {
      bodies[i][j] = {
        new object[DEFAULT_GRID_CONTAINER_SIZE], 
        DEFAULT_GRID_CONTAINER_SIZE, 
        0
      };
      memset(bodies[i][j].objects, 0, DEFAULT_GRID_CONTAINER_SIZE);
    }
  }
  printf("%p\n", &bodies);
  
}

Physics::~Physics()
{
  //deallocates the objects in the grid
  int grid_size = 0;
  ObjectArray grid_objects = nullptr;
  //std::cout << "Deleting: ";
  for (int i = 0; i < GRID_Y; i++)
  {
    for (int j = 0; j < GRID_X; j++)
    {
      //PRINT_DECONSTRUCTOR
      grid_size = bodies[i][j].size;
      grid_objects = bodies[i][j].objects;
      bodies[i][j].objects = nullptr;
      //Deleting individual grid objects
      for (int k = 0; k < grid_size; k++)
      {
        if (grid_objects[k] != nullptr)
        {
          PRINT_DECONSTRUCTOR(grid_size, k);
          delete grid_objects[k];
          
          grid_objects[k] = nullptr;
        }
      }
      //Deletes the grid array
      delete[] grid_objects;
      bodies[i][j].objects = nullptr;
    }
  }
}

Physics *Physics::GetInstance()
{
  if(instance == nullptr){
    instance = new Physics();

  }
  return instance;
}

SDL_Point Physics::FindGridIndex(Vector2D Position)
{
  return {int(Position.x/SPACE_PER_GRID_X) , int(Position.y/SPACE_PER_GRID_Y)};
}

H_Grid Physics::GetGridFromPosition(Vector2D Position)
{
  SDL_Point p = FindGridIndex(Position);
  return &bodies[p.y][p.x];
}

/// @brief Takes in a pointer to a specific grid in "bodies" and creates a new array of a specified max_size, returning early if it is less than the max_size of the original grid
/// @param grid Pointer to a grid in bodies in the Physics class
/// @param max_size The desired reallocated max_size
void* Physics::resize_grid(Grid *grid, int new_max_size)
{
  //Check if the specified max_size is less than the current max_size
  if(new_max_size < grid->max_size) return nullptr;
  
  //Allocate a new array for objects
  ObjectArray new_grid_object_container = new object[new_max_size];

  //Copy the data from the old array to the new one
  memcpy(new_grid_object_container, grid->objects, sizeof(object) * grid->max_size);

  //Change the max_size
  grid->max_size = new_max_size;

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
H_Sphere Physics::sphere_collision(const H_Sphere sph_obj)
{
  //Set the closest distance to infinite because we assume that 
  float closest_distance = INFINITY;

  H_Sphere collided = nullptr;
  for (int i = 0; i < MAX_GRID_GROUP_AMOUNT; i++)
  {
    if (sub_bodies[i] != nullptr)
    {
      int object_count = sub_bodies[i]->size;
      //printf("Finding sphere\n");
      for (int j = 0; j < object_count; j++)
      {
        //printf("%i\n", j);
        Sphere* object_to_check = (Sphere*)(sub_bodies[i]->objects[j]);
        if(object_to_check != sph_obj && object_to_check != nullptr){
          //Distance between the objects
          //printf("Transform of obj: %i, %f, %f \n", j, sph_obj->transform.Position.x, sph_obj->transform.Position.y, sph_obj->transform.Position);
          float dist = Distance(sph_obj->FuturePosition(), object_to_check->FuturePosition());
          //printf("%f\n",dist);
          if ((object_to_check->Radius + sph_obj->Radius > dist) && (closest_distance > dist))
          {
            // Collision!         
            closest_distance = dist;
            collided = object_to_check;
            //printf("hit");
          }
        }

        
      }
    }
  }

  return collided;
}

H_Mesh_OBJ Physics::mesh_collision(const H_Grid *other_bodies, H_Mesh_OBJ obj)
{
  return nullptr;
}

H_Rectangle Physics::rectangle_collision(const H_Grid *other_bodies, H_Rectangle obj)
{
  return nullptr;
}
void Physics::BoundingBox(object obj)
{
  Vector2D pos = obj->FuturePosition();
  if(pos.x + obj->Radius > WORLD_SPACE_LIMIT_X || pos.x - obj->Radius < 0){
    obj->SetForce({-obj->force.x, obj->force.y});
  }
  if(pos.y + obj->Radius > WORLD_SPACE_LIMIT_Y || pos.y - obj->Radius< 0){
    obj->SetForce({obj->force.x, -obj->force.y});
  } 
}

/// @brief This function will get the surrounding grid tiles around the specified x and y in a 3x3 (boundaries are safe).
/// @param x The specified center grid in the x
/// @param y The specified center grid in the y
/// @return This will return true as a value and update sub_bodies of the Physics Class
bool Physics::Get_Surrounding_Grid(int x, int y){
  //Check if arguments are within bounds
  if(x > GRID_X || x < 0) return false;
  if(y > GRID_Y || y < 0) return false;

  //printf("x: %u, y: %u\n", x, y);
  Vector2D startGrid = {B_Clamp(0, GRID_X, x - 1), B_Clamp(0, GRID_Y, y - 1)};
  Vector2D endGrid = {B_Clamp(0, GRID_X, x + 1), B_Clamp(0, GRID_Y, y + 1)};

  //Zero out sub_bodies
  memset(sub_bodies, 0, sizeof(Grid *) * 9);
  int grid_counter = 0;
  
  //TODO: this can be optimized by doing pointer arithemetic, no need for a nested loop
  // Get the grids that is surrounding the objects
  for (int Grid_y = startGrid.y; Grid_y < endGrid.y; Grid_y++)
  {
    for (int Grid_x = startGrid.x; Grid_x < endGrid.x; Grid_x++)
    {
      //
      sub_bodies[grid_counter] = &bodies[Grid_y][Grid_x];
    }
  }

  return true;
}


void Physics::MoveObject(int x, int y, object obj)
{
  if(obj == nullptr) return;
  //printf("Past Position: x: %f y: %f\n",obj->transform.Position.x, obj->transform.Position.y);
  BoundingBox(obj);
  obj->Move();  
  //printf("Current Position: x: %f y: %f\n",obj->transform.Position.x, obj->transform.Position.y);

  //Checks if the object moved to a new grid area or not
  SDL_Point newGrid = {int(obj->transform.Position.x / SPACE_PER_GRID_X), int(obj->transform.Position.y / SPACE_PER_GRID_Y)};
  //printf("NewGrid x: %i, y: %i\n", newGrid.x, newGrid.y);
  if (newGrid != SDL_Point{x, y})
    AddObject(newGrid, RemoveObject({x,y}, obj));
  
  //printf("%p %s, \n", obj, obj->Name);
}

bool Physics::CheckInputBounds(Vector2D target, Vector2D limit)
{
  if(target.x > limit.x || target.x < 0) return false;
  if(target.y > limit.x || target.y < 0) return false;
  return true;
}

/// @brief Main physics loop, should not be called more than once per frame.
void Physics::Update_Object()
{
  count++;
  for(int i = 0; i < GRID_Y; i++){
    for(int j = 0; j < GRID_X; j++){

      Get_Surrounding_Grid(j, i); // After this runs, "sub_bodies" updates
      for (int k = 0; k < bodies[i][j].size; k++)
      {
        object subject_obj = (bodies[i][j].objects[k]);
        //printf("%i\n",  k);
        object collided = sphere_collision(subject_obj);
        if (collided != nullptr)
        {
          //printf("Collision!\n");
          Resolve_Collision(subject_obj, collided, 1);
          MoveObject(j, i, collided);
        }
        
        float friction = subject_obj->mass * Default_Gravity * subject_obj->friction;
        //printf("%p, %i\n",subject_obj,  count);
        MoveObject(j, i, subject_obj);
      }
    }
  }
}


Vector2D final_velocity(const object A, const object B)
{
  // https://en.wikipedia.org/wiki/Elastic_collision#cite_ref-serway258_2-0
  Vector2D pos_diff = A->transform.Position - B->transform.Position;
  //if(!pos_diff.x && !pos_diff.y) return Vector2_One;
  
  float dot = DotProduct(A->force - B->force, pos_diff);

  //TODO: change the Magnitude function to its squared equivalent
  Vector2D final = A->force - (2 * B->mass / (A->mass + B->mass)) * (dot / DotProduct(pos_diff, pos_diff)) * pos_diff;

  return final;
}
/// @brief How the object will behave after colliding with another object.
/// @param objectA 
/// @param objectB 
void Physics::Resolve_Collision(const object objectA,const object objectB, float ForceScale)
{
  //if(objectA->transform.Position == objectB->transform.Position) return;
  // Since there is "ghosting" of an object in collision, we have to find the positions of the objects AT the moment of collision. Next return the resulting force vector of the collision to both objects
  objectA->SetForce(final_velocity(objectA, objectB) * ForceScale);
  objectB->SetForce(final_velocity(objectB, objectA) * ForceScale);
  
}

/// @brief Given a coordinate point on the grid between the bounds append the object to the end of that grid list
/// @param x_index The x coordinate on the grid to add in
/// @param y_index The y coordinate on the grid to add in
/// @param obj The object to add 
bool Physics::AddObject(SDL_Point index, object obj)
{
  if(obj == nullptr) return false;
  if(!CheckInputBounds({index.x,index.y}, {GRID_X - 1, GRID_Y - 1})) return false;
  H_Grid grid = &bodies[index.y][index.x];
  if (grid->size > grid->max_size - 1)
  {
    std::cout << "Resizing grid to " << (grid->max_size * 2) << std::endl;
    resize_grid(grid, grid->max_size * 2);
  }
 
  grid->objects[grid->size] = obj;
  
  grid->size++;
  return true;
}

/// @brief Removes an object from a specified grid given the grid coordinate and object address. 
//  NOTE: This does NOT delete the object so it has to be used in conjunction with AddObject and 
//  should only be used in order to switch the grids location of the objects or promptly deleted
//  afterwards
/// @param x_index X Coordinate of the grid.
/// @param y_index Y Coordinate of the grid.
/// @param obj  Address of the object.
object Physics::RemoveObject(SDL_Point index, object obj)
{
  
  if(obj == nullptr) return nullptr;
  if(!CheckInputBounds({index.x ,index.y }, {GRID_X - 1, GRID_Y - 1})) return nullptr;

  Grid *grid = &bodies[index.y][index.x];

  int grid_size = grid->size;
  int grid_max = grid->max_size;

  object returningOBJ = nullptr;
  for (int i = 0; i < grid_size; i++)
  {
    if(obj == grid->objects[i]){
      //Remove obj from list
      returningOBJ = grid->objects[i];
      grid->objects[i] = nullptr;

      //Shift all objects back
        //Apparently memcpy/memset is faster due to asm optimization so thats 
        //what we'll be using
      memcpy(
        grid->objects + i, 
        grid->objects + i + 1, 
          //if index is at the end, we don't need to check for bounding errors 
          //since the size of our copy should deal with that
        sizeof(object) * (grid_size - i - 1)
      );
      grid->objects[grid->size - 1] = nullptr;
    }
  }
  grid->size--;
  return returningOBJ;
}

Grid (* Physics::Get_Objects())[GRID_X]
{
  return bodies;
}

object Physics::GetObject(int y, int x, int index)
{
  if(!CheckInputBounds({x,y}, {GRID_X,GRID_Y})) return nullptr;
  object obj = bodies[y][x].objects[index];
  return obj != nullptr ? obj : nullptr;
}

/// @brief Prints the address of the specified grid from "bodies" with the index, max_size, and objects.
/// @param x The x coordinate grid address
/// @param y The y coordinate grid address
void Physics::PrintGrid(int x , int y)
{
  if(x > GRID_X - 1 || y > GRID_Y - 1 || x < 0 || y < 0 ) {
    std::cout << "X or Y out of bounds" << std::endl;
    return;
  }
  std::cout << "\nX: " << x << " Y: "<< y << " Size: " << bodies[y][x].size << ", max_size: " << bodies[y][x].max_size << '\n';
  std::cout << "     ";
  for (size_t i = 0; i < bodies[y][x].size; i++)
  {
    std::cout << bodies[y][x].objects[i]->Name << ": " <<bodies[y][x].objects[i] << " ";
    if((i + 1) % 6 == 0){
      std::cout << std::endl << "     ";
    }
  }
  printf("\n");
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
