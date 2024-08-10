#pragma once 

#include "bmath.h"
#include "Vector2D.h"
#include "Transform.h"
#include "mesh.h"
#include <string>
#include <box2d/box2d.h>
#include <box2d/b2_body.h>
#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#define Default_Gravity -9.81
#define Default_Mass 1


#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}




class Object{
private:
  b2Fixture* fixture;
public:
  Object();
  Object(b2Fixture*);
  ~Object();
  std::string name;
  int id;

  b2Shape* shape;
  b2Shape::Type type;
  

  SDL_Texture* texture;
  #pragma GCC diagnostic ignored "-Wnarrowing"
  #pragma GCC diagnostic ignored "-Woverflow"
//Color
union{
  struct{
    uint8_t r;
    uint8_t g;
    uint8_t b;
    uint8_t a;
  };
  struct{
    uint8_t red;
    uint8_t green;
    uint8_t blue;
    uint8_t alpha;
  };
    uint32_t raw;
    uint8_t rgba[4];
    SDL_Color color;
  };
  virtual void OnCollision(b2Contact* _collision);
  virtual void OnCollisionEnd(b2Contact* _collision);

  void SetFixture(b2Fixture* _fixture);
  b2Fixture* GetFixture()
  {
  return fixture;
  }

  void SetTexture(SDL_Texture* _texture);
  SDL_Texture* GetTexture();

  Vector2D GetPosition()
  {
  
    b2Vec2 pos = fixture->GetBody()->GetPosition();
    return Vector2D{pos.x, pos.y};
  }
  Vector2D GetForce()
  {
    b2Vec2 force = fixture->GetBody()->GetLinearVelocity();
    return {force.x, force.y};
  }

  b2Shape::Type GetType() {return type;}
  b2Shape* GetShape() {return shape;}
  

  friend class Physics;

};
