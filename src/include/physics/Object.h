#pragma once 

#include "./core/spacial/Vector2D.h"
#include "./core/spacial/Transform.h"
#include "./core/picture/mesh.h"
#include "./SDL2/SDL_rect.h"
#include "Physics.h"
#include "./utility/bmath.h"

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

  Object();
  Object(Transform);
  
  ~Object();

  void Move();
  void Scale(Vector2D);
  void Rotate(float);

  virtual H_Object detect_collision(const Grid **) = 0;
};
typedef Object* H_Object;


///////////////////////////////
///////////////////////////////


/// @brief Spherical object using the radius
class Sphere{
public:
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  float Radius;

  Sphere();
  Sphere(float);
  ~Sphere();
  void Move();
  void Scale(Vector2D);
  void Rotate(float);

  Sphere* detect_collision(const Grid **);
};
typedef Sphere *H_Sphere;


///////////////////////////////
///////////////////////////////


class Rectangle{
public:
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  Vector2D width_height;
  void Move();
  void Scale(Vector2D);
  void Rotate(float);

  Rectangle();
  ~Rectangle();
  Rectangle* detect_collision(const Grid **);
};
typedef Rectangle* Rectangle;

///////////////////////////////
///////////////////////////////

class Mesh{
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  Mesh *Mesh;


  void Move();
  void Scale(Vector2D);
  void Rotate(float);
  H_Object detect_collision(const Grid **);
};
typedef Mesh* Mesh;