#pragma once 

#include "bmath.h"
#include "Vector2D.h"
#include "Transform.h"
#include "mesh.h"
#include <SDL2/SDL_rect.h>

#define Default_Gravity -9.81
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

/// @brief Spherical object using the radius
class Sphere
{
public:
  Transform transform;
  
  
  float gravity;
  Vector2D force;
  float mass;

  float friction;
  float Radius;
  
  
  #pragma GCC diagnostic ignored "-Wnarrowing"
  #pragma GCC diagnostic ignored "-Woverflow"
  typedef struct{
    union{
      struct{
        uint8_t r;
        uint8_t g;
        uint8_t b;
        uint8_t a;
        
      };

      uint32_t raw;
      uint8_t rgba[4];
    } color;
    int thickness;
  } SphereRender;
  SphereRender render; 

  Sphere();
  Sphere(float Radius);
  Sphere(float Radius, Vector2D Position);
  Sphere(float Radius, float xPosition, float yPosition);
  ~Sphere();
  void Move();
  Vector2D FuturePosition();

  void Scale(Vector2D);
  void Rotate(float);

  void SetForce(Vector2D);
  void AddForce(Vector2D);

  virtual void OnCollision(Sphere*);
};
typedef Sphere* H_Sphere;


///////////////////////////////
///////////////////////////////


class Rectangle{
public:
  Transform transform;
  float gravity;
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
  void Move();
  void Scale(Vector2D);
  void Rotate(float);
};
typedef Mesh_OBJ* H_Mesh_OBJ;

