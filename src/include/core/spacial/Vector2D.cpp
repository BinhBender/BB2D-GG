#include "Vector2D.h"

Vector2D::Vector2D()
{
  x = y = length = 0; 
}
Vector2D::Vector2D(float inX, float inY)
{
  this->x = inX;
  this->y = inY;
  length = Magnitude();
}

float Vector2D::Magnitude(){
  return length = sqrt(x * x + y * y);
}
float Vector2D::DotProduct(Vector2D other){
  return x * other.x + y * other.y;
}
Vector2D Vector2D::Zero()
{
  return Vector2D(0, 0);
}
Vector2D Vector2D::Up()
{
  return Vector2D(0, 1);
}
Vector2D Vector2D::Down()
{
  return Vector2D(0,-1);
}

Vector2D Vector2D::One(){
  return Vector2D(1,1);
}
Vector2D Vector2D::operator+(Vector2D other){
  return Vector2D(x + other.x, y + other.y);
}
Vector2D Vector2D::operator-(Vector2D other){

  return Vector2D(x - other.x, y - other.y);
}

Vector2D Vector2D::operator*(float scalar){

  return Vector2D(x * scalar, y * scalar);
}
Vector2D Vector2D::operator/(float scalar)
{
  return Vector2D(x / scalar, y / scalar);
}

void Vector2D::operator+=(Vector2D other)
{
  *this = *this + other;
}


bool Vector2D::operator==(Vector2D other)
{
  return (this->x && other.x) && (this->y && other.y);
}

bool Vector2D::operator!=(Vector2D other)
{
  return !(this->x && other.x) && (this->y && other.y);
}
