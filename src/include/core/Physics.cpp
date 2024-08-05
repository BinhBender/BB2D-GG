#include "Physics.h"
inline void Physics::bodyDefInit()
{
  dynamicbodydef.type = b2_dynamicBody;
  dynamicbodydef.position = b2Vec2_zero;

  staticbodydef.type = b2_staticBody;
  staticbodydef.position = b2Vec2_zero;

}

inline void Physics::fixtureDefInit()
{
  defaultFixtureDef.friction = 0.3f;
  defaultFixtureDef.density = 1.0f;

}

inline void Physics::circleShapeInit()
{
  primitiveCircle.m_radius = 10;

}

inline void Physics::rectShapeInit()
{
  primitiveRect.SetAsBox(5.0f, 5.0f);
}

inline void Physics::polygonShapeInit()
{
}


Physics::Physics()
{
  gravity = b2Vec2(0.0f, -10.0f);
  world = new b2World(gravity);

  world->SetContactListener(&ContactListenerInstance);
  bodyDefInit();
  circleShapeInit();
  rectShapeInit();
  polygonShapeInit();
}

Physics::~Physics()
{
  for (size_t i = 0; i < PhysicalObjects.size(); i++)
  {
    delete PhysicalObjects[i];
  }
  
  delete world;
}


void Physics::Update_Object()
{
  this->world->Step(timeStep, velocityIterations, positionIteration);
}

Object* Physics::CreateCircle(Vector2D _pos, float _rad)
{
  ASSERTR(_rad > 0, nullptr,"Radius input is negative\n");

//Make body from body definition
  dynamicbodydef.position.Set(_pos.x, _pos.y);
  b2Body* newCircleBody = world->CreateBody(&dynamicbodydef);

//Modify primitive shapes according to input
  primitiveCircle.m_radius = _rad;

//Make fixture definition from default fixture
  b2FixtureDef newfixturedef;
//Bind shape from fixture def to primitive shape
  newfixturedef.friction = 0.3f;
  newfixturedef.density = 1.0f;
  newfixturedef.shape = &primitiveCircle;

//Create fixture object from fixture definition and apply it to newObject fixture
  Object* newObject = new Object(newCircleBody->CreateFixture(&newfixturedef));
  
  PhysicalObjects.push_back(newObject);
  circleShapeInit();
  return newObject;
}

Object* Physics::CreateRect(Vector2D _pos, Vector2D _wh)
{
  ASSERTR(_wh.x > 0 && _wh.y > 0, nullptr, "W/H input contains a negative\n");

//Make body from body definition
  dynamicbodydef.position.Set(_pos.x, _pos.y);
  b2Body* newRectBody = world->CreateBody(&dynamicbodydef);
  dynamicbodydef.position.SetZero();
  
//Modify primitive shapes according to input
  primitiveRect.SetAsBox(_wh.x, _wh.y);

//Make fixture definition from default fixture
  b2FixtureDef newfixturedef = defaultFixtureDef;

//Bind shape from fixture def to primitive shape
  newfixturedef.shape = &primitiveRect;

//Create fixture object from fixture definition and apply it to newObject fixture
  Object* newObject = new Object(newRectBody->CreateFixture(&newfixturedef));
  
  PhysicalObjects.push_back(newObject);
  return newObject;
}

Object* Physics::CreateEdge(Vector2D _pointA, Vector2D _pointB)
{
  ASSERTR(Distance(_pointA, _pointB) != 0, nullptr, "Edges are on the same point %f\n", Distance(_pointA, _pointB));
//Since fixtures are relative to the body, we find the real position of the midpoint
  Vector2D midpoint = Midpoint(_pointA, _pointB);
  _pointA = _pointA - midpoint;
  _pointB = _pointB - midpoint;

//Make body from body definition
  staticbodydef.position.Set(midpoint.x, midpoint.y);
  b2Body* edgebody = world->CreateBody(&staticbodydef);
  staticbodydef.position.SetZero();
  
//Modify primitive shapes according to input
  b2Vec2 start(_pointA.x, _pointA.y);
  b2Vec2 end(_pointB.x, _pointB.y);
  b2EdgeShape edge;
  edge.SetTwoSided(start, end);

//Make fixture definition from default fixture
  b2FixtureDef newfixturedef;
  newfixturedef.friction = 0.3f;
  newfixturedef.density = 1.0f;
  newfixturedef.shape = &edge;

//Create fixture object from fixture definition and apply it to newObject fixture
  Object* newEdge = new Object(edgebody->CreateFixture(&newfixturedef));
  PhysicalObjects.push_back(newEdge);


  return newEdge;
}
Object* Physics::CreatePolygon(Vector2D _pos, b2Vec2 *_points, size_t _size)
{
  ASSERTR(_points == nullptr, nullptr, "Provided points is nullptr\n");
  ASSERTR(_size > 3, nullptr, "Provided size is less than 3\n");
//Make body from body definition
  dynamicbodydef.position = b2Vec2(_pos.x, _pos.y);
  b2Body* polygonbody = world->CreateBody(&dynamicbodydef);
  dynamicbodydef.position.SetZero();
  
//Modify primitive shapes according to input
  b2PolygonShape polygon;
  polygon.Set(_points, _size);

//Make fixture definition from default fixture
  b2FixtureDef newfixturedef = defaultFixtureDef;
  newfixturedef.shape = &polygon;

//Create fixture object from fixture definition and apply it to newObject fixture
  Object* newPolygon = new Object(polygonbody->CreateFixture(&newfixturedef));
  PhysicalObjects.push_back(newPolygon);


  return newPolygon;
}
Object* Physics::RemoveObject(Object* _obj)
{

  
  world->DestroyBody(_obj->fixture->GetBody());

  return _obj;
}


void Physics::SetTimeStep(float _timestep)
{
  ASSERT(timeStep >= 0, "Given timestep is less than zero %d", _timestep);
  timeStep = _timestep;

}

float Physics::GetTimeStep()
{
  return timeStep;
}