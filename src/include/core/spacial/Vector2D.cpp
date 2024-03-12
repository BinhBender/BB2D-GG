#include "Vector2D.h"

float Magnitude(Vector2D self){
  return sqrt(self.x * self.x + self.y * self.y);
}
float DotProduct(Vector2D self, Vector2D other){
  return self.x * other.x + self.y * other.y;
}

Vector2D operator+(const Vector2D &self, const Vector2D &other)
{
  return {self.x + other.x, self.y + other.y};
}
Vector2D operator-(Vector2D &self, const Vector2D &other)
{

  return {self.x - other.x, self.y - other.y};
}

Vector2D operator*(Vector2D &self, float scalar){

  return {self.x * scalar, self.y * scalar};
}
Vector2D operator/(Vector2D &self, const float scalar)
{
  return {self.x / scalar, self.y / scalar};
}

void operator+=(Vector2D &self,const Vector2D &other)
{
  self = self + other;
}


bool operator==(Vector2D self, Vector2D other)
{
  return (self.x && other.x) && (self.y && other.y);
}

bool operator!=(Vector2D self, Vector2D other)
{
  return !(self.x && other.x) && (self.y && other.y);
}
