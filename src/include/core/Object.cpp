#include "Object.h"

Object::Object()
{
//Check that a body exists
  b2Body* bod = fixture->GetBody();
  ASSERT(bod, "Body is nullptr");
//Stores the address of this object in the user data
  bod->GetUserData().pointer = (uintptr_t)this;

  id = -1;
  name = "";
  raw = 0xffffffffff;
  texture = nullptr;
}

Object::Object(b2Fixture * fixture) : Object()
{
  this->fixture = fixture;
}

void Object::OnCollision(b2Contact* _collision)
{

}

void Object::OnCollisionEnd(b2Contact* _collision)
{

}
