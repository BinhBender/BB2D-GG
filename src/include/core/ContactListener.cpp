#include "ContactLIstener.h"

void MyContactListener::BeginContact(b2Contact *contact)
{
  //Gets the address of the address of the Object stored in UserData
  void* bodyUserData = (void*)contact->GetFixtureA()->GetBody()->GetUserData().pointer;
  if (bodyUserData != nullptr){
    static_cast<Object*>(bodyUserData)->OnCollision(contact);
  }
  //Check for fixture B
  bodyUserData = (void*)contact->GetFixtureB()->GetBody()->GetUserData().pointer;
  if (bodyUserData != nullptr){
    static_cast<Object*>(bodyUserData)->OnCollision(contact);
  }
}

void MyContactListener::EndContact(b2Contact *contact)
{
  //Gets the address of the address of the Object stored in UserData
  void* bodyUserData = (void*)contact->GetFixtureA()->GetBody()->GetUserData().pointer;
  if (bodyUserData != nullptr){
    static_cast<Object*>(bodyUserData)->OnCollisionEnd(contact);
  }
  //Check for fixture B
  bodyUserData = (void*)contact->GetFixtureB()->GetBody()->GetUserData().pointer;
  if (bodyUserData != nullptr){
    static_cast<Object*>(bodyUserData)->OnCollisionEnd(contact);
  }
}
