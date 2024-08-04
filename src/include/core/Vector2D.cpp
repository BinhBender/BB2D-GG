#include "Vector2D.h"

float Magnitude(Vector2D self){
  return sqrt((self.x * self.x) + (self.y * self.y));
}
float DotProduct(Vector2D self, Vector2D other){
  return (self.x * other.x) + (self.y * other.y);
}

float Distance(Vector2D self, Vector2D other){
  return sqrt(((self.x - other.x) * (self.x - other.x)) + ((self.y - other.y) * (self.y - other.y)));

}

Vector2D Normalize(const Vector2D& self){
  return self / Magnitude(self);
}

Vector2D Midpoint(Vector2D &self, Vector2D &other)
{
  return (self + other) / 2;
}

Vector2D operator+(const Vector2D &self, const Vector2D &other)
{
  return {self.x + other.x, self.y + other.y};
}
Vector2D operator-(const Vector2D &self, const Vector2D &other)
{

  return {self.x - other.x, self.y - other.y};
}

Vector2D operator*(const Vector2D &self, const float &scalar)
{

  return {self.x * scalar, self.y * scalar};
}
Vector2D operator*(const float &scalar, const Vector2D &self)
{
  return {self.x * scalar, self.y * scalar};
}
Vector2D operator/(const Vector2D &self, const float &scalar)
{
  return {self.x / scalar, self.y / scalar};
}

void operator+=(Vector2D &self, const Vector2D &other)
{
  self = self + other;
}

void operator-=(Vector2D &self, const Vector2D &other)
{
  self = self - other;
}

bool operator==(const Vector2D &self, const Vector2D &other)
{
  return (self.x && other.x) && (self.y && other.y);
}

bool operator!=(const Vector2D &self, const Vector2D &other)
{
  return !(self.x && other.x) && (self.y && other.y);
}

bool operator!=(const SDL_Point &self, const SDL_Point &other)
{
  return self.x == other.x && self.y == other.y;
}
