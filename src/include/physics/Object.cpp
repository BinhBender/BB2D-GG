#include "Object.h"

Object::Object()
{
  gravity = Default_Gravity;
  mass = Default_Mass;

  force = Vector2D::Zero();
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
  
}

/// @brief  Turns the object according to the radial input value
void Object::Rotate(float Radians)
{

}
