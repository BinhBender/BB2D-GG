#pragma once 

#include "bmath.h"
#include "Vector2D.h"
#include "Transform.h"
#include "mesh.h"
#include "./SDL2/SDL_rect.h"

#define Default_Gravity Vector2D{0, -9.81}
#define Default_Mass 1

#define _SPHERE
#ifdef _MESH
#define OBJ_TYPE Mesh
#define H_OBJ_TYPE H_Mesh

#endif
#ifdef _RECTANGLE

#define OBJ_TYPE Rectangle
#define H_OBJ_TYPE H_Rectangle
#endif
#ifdef _SPHERE
  #define OBJ_TYPE Sphere
  #define H_OBJ_TYPE H_Sphere
#endif

enum object_type{
  sphere,
  mesh,
  rectangle
};

/// @brief Spherical object using the radius
class Sphere
{
public:
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  float Radius;

  object_type type = sphere;

  Sphere();
  Sphere(float);
  ~Sphere();
  void Move();
  void Scale(Vector2D);
  void Rotate(float);

};
typedef Sphere* H_Sphere;


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

  object_type type = rectangle;

  Vector2D width_height;
  void Move();
  void Scale(Vector2D);
  void Rotate(float);

  Rectangle();
  ~Rectangle();
};
typedef Rectangle* H_Rectangle;

///////////////////////////////
///////////////////////////////

class Mesh_OBJ{
  Transform transform;
  Vector2D gravity;
  float mass;
  Vector2D force;

  float friction;
  float bounce;

  Mesh *Mesh;

  object_type type = mesh;
  void Move();
  void Scale(Vector2D);
  void Rotate(float);
};
typedef Mesh_OBJ* H_Mesh_OBJ;
