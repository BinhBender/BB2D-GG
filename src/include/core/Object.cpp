#include "Object.h"

Object::Object()
{
  fixture = nullptr;
//Check that a body exists
//Stores the address of this object in the user data
  id = -1;
  name = "";
  raw = 0xffffffffff;
  texture = nullptr;

}

Object::Object(b2Fixture * _fixture) : Object()
{
  SetFixture(_fixture);
}

Object::~Object()
{
}

void Object::OnCollision(b2Contact* _collision)
{

}

void Object::OnCollisionEnd(b2Contact* _collision)
{

}

inline void Object::SetFixture(b2Fixture *_fixture)
{
  this->fixture = _fixture;
  fixture->GetBody()->GetUserData().pointer = uintptr_t(this);
  type  = fixture->GetType();
  shape = fixture->GetShape();
}

SDL_Texture *Object::GetTexture()
{
  return texture;
}

