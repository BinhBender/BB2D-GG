#include "Object.h"
Sphere::Sphere()
{
  gravity = Default_Gravity;
  mass = Default_Mass;

  force = Vector2_Zero;

  Radius = 1;
}

Sphere::Sphere(float rad)
{
  gravity = Default_Gravity;
  mass = Default_Mass;

  force = Vector2_Zero;
  Radius = rad;
}

Sphere::~Sphere()
{
}

/// @brief Updates the object with the force and moves it according to direction and magnitude of the force
void Sphere::Move()
{
  transform.Position = FuturePosition();
}

Vector2D Sphere::FuturePosition(){
  return transform.Position + force;
}
/// @brief Updates the size of the object
/// @param  ScalingVector A Vector2D that contains the scalars of x and y
void Sphere::Scale(Vector2D ScalingVector)
{
  transform.Scale.x *= ScalingVector.x;
  transform.Scale.y *= ScalingVector.y;
}

/// @brief  Turns the object according to the radial input value
void Sphere::Rotate(float Radians)
{
  transform.Rotate(Radians);
}

void Sphere::SetForce(Vector2D f)
{
  force = f;
}

void Sphere::AddForce(Vector2D f)
{
  force += f;
}
