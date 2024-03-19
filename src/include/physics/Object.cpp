#include "Object.h"

Object::Object()
{
  gravity = Default_Gravity;
  mass = Default_Mass;

  force = Vector2_Zero;
}

/// @brief Updates the object with the force and moves it according to direction and magnitude of the force
void Object::Move()
{
  transform.Position += force;
}

/// @brief Updates the size of the object
/// @param  ScalingVector A Vector2D that contains the scalars of x and y
void Object::Scale(Vector2D ScalingVector)
{
  transform.Scale.x *= ScalingVector.x;
  transform.Scale.y *= ScalingVector.y;
}

/// @brief  Turns the object according to the radial input value
void Object::Rotate(float Radians)
{
  transform.Rotate(Radians);
}

Sphere::Sphere()
{
  gravity = Default_Gravity;
  mass = Default_Mass;

  force = Vector2_Zero;

  Radius = 1;
}

Sphere::Sphere(float rad)
{
  Radius = rad;
}

Sphere::~Sphere()
{

}


/// @brief 
/// @param other_bodies 
/// @return The single collision of
H_Sphere Sphere::detect_collision(const Grid **other_bodies)
{
  for(int i = 0; i < MAX_GRID_GROUP_AMOUNT; i++){
    if(other_bodies[i] != nullptr){
      int size = other_bodies[i]->lastIndex;
      float closest_distance = 0;
      for(int j = 0; j < size; j++){





      }
    }
  }
}
