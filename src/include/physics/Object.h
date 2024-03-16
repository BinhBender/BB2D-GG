#pragma once 

#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"
#include "./core/picture/mesh.h"
#include "./SDL2/SDL_rect.h"
#include "Physics.h"


#define Default_Gravity Vector2D{0, 0}
#define Default_Mass 1

class Physics;
class Object{
  
public:
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  Mesh* Mesh;

  Object();
  ~Object();

  void Move();
  void Scale(Vector2D);
  void Rotate(float);

  void virtual detect_collision(Grid*) = 0;
};
typedef Object* H_Object;

/// @brief Spherical object using the radius
class Sphere : public Object{
  float Radius;

  Sphere();
  Sphere(float);
  ~Sphere();
  void detect_collision(Grid*);
};

class Rectangle : public Object{
public:
  Vector2D width_height;



  Rectangle();
  ~Rectangle();
  void detect_collision(H_Object*);
};


