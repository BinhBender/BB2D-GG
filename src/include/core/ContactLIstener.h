#include <box2d/b2_world_callbacks.h>
#include <core/Object.h>


class MyContactListener : public b2ContactListener{
  void BeginContact(b2Contact* contact);
  void EndContact(b2Contact* contact);
};