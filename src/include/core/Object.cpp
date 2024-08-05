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
}

Vector2D Object::GetPosition()
{
  
  b2Vec2 pos = fixture->GetBody()->GetPosition();
  return Vector2D{pos.x, pos.y};
}
