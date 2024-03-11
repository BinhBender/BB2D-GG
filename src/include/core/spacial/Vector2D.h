#include <cmath>

#pragma once

class Vector2D{
public:
  float x;
  float y;
  float length;

  Vector2D();
  Vector2D(float,float);

  float Magnitude();
  float DotProduct(Vector2D);

  static Vector2D Zero();
  static Vector2D Up();
  static Vector2D Down();
  static Vector2D One();

  void Rotate(float);
  

//Basic Arithmetics
  Vector2D operator+(Vector2D);
  Vector2D operator-(Vector2D);

  Vector2D operator*(float);
  Vector2D operator/(float);

  void operator+=(Vector2D);
  void operator-=(Vector2D);


//Conditionals
  bool operator==(Vector2D);
  bool operator!=(Vector2D);
  
};

