#pragma once

#include <cmath>
#include "Vector2D.h"


class Transform{
public:

  Transform();
  Transform(Vector2D);
  Transform(Vector2D, Vector2D, Vector2D);

  Vector2D Position;
  Vector2D Scale;

  union
  {
    Vector2D Direction;
    Vector2D Rotation;
    Vector2D Forward;
  };


  Vector2D Move(Vector2D);

  Vector2D Rotate(float);
};