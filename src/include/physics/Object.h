#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"
#include "./core/picture/mesh.h"

#pragma once

#define Default_Gravity Vector2D{0, 0}
#define Default_Mass 1

class Object{
  
public:
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  void* Mesh;

  Object();

  void Move();
  void Scale(Vector2D);
  void Rotate(float);

};

typedef Object* H_Object;