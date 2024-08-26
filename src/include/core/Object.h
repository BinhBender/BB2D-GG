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
  b2Body* body;
public:
  Object();
  Object(b2Fixture*);
  ~Object();
  std::string name;
  int id;

  b2Shape* shape;
  b2Shape::Type type;
  
//Unused
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
  b2Fixture* GetFixture() const;
  
  b2Body* GetBody() const;

  void SetTexture(SDL_Texture* _texture);
  SDL_Texture* GetTexture();

  Vector2D GetPosition();
  const b2Vec2& b2GetPosition();
  Vector2D GetForce();

  float GetMass();
  void SetPosition(Vector2D _pos);
  b2Shape::Type GetType();
  b2Shape* GetShape();


  friend class Physics;

};


typedef struct{

  b2Vec2 position;
  float angle;
  SDL_Color     color;
  
  //b2BodyDef     bodydef;
  //b2FixtureDef  fixturedef;
  b2Shape*       shape;
  //
  SDL_Texture*  texture;
  //b2MassData    massdatadef;
}ObjectDef;


inline b2Fixture* Object::GetFixture() const
{
  return fixture;
}

inline b2Body* Object::GetBody() const
{
  return fixture->GetBody();
}

inline Vector2D Object::GetPosition()
{
  b2Vec2 pos = body->GetPosition();
  return Vector2D{pos.x, pos.y};
}
inline const b2Vec2& Object::b2GetPosition()
{
  return body->GetPosition();
}

inline Vector2D Object::GetForce()
{
  b2Vec2 force = body->GetLinearVelocity();
  return {force.x, force.y};
}

inline float Object::GetMass(){
  return body->GetMass();
}

inline void Object::SetPosition(Vector2D _pos){
  fixture->GetBody()->SetTransform({_pos.x, _pos.y}, body->GetAngle());
}

inline b2Shape::Type Object::GetType()  {return type;}
inline b2Shape*      Object::GetShape() {return shape;}