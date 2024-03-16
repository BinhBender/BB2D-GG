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

Sphere::Sphere() : Object()
{
  Radius = 1;
}

Sphere::~Sphere()
{
}

void Sphere::detect_collision(Grid* other_bodies)
{

}
