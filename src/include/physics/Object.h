#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"

#pragma once

#define Default_Gravity 9.81f
#define Default_Mass 1

class Object{
  
public:
  Transform transform;
  float gravity;
  float mass;
  Vector2D force;

  void* Mesh;

  Object();

  void Move();
  void Scale(Vector2D);
  void Rotate(float);

};