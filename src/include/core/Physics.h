#pragma once

#include "Bmath.h"
#include "Vector2D.h"
#include "Object.h"
#include <string.h>
#include <box2d/box2d.h>
#include <iostream>
#include <vector>
#include <memory>

#include "ContactLIstener.h"

#define WORLD_SPACE_LIMIT_X 1280  
#define WORLD_SPACE_LIMIT_Y 720

// Each grid will have array of pointers to OBJ_TYPE as well as a count for the number of items in the grid


#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}
#define ASSERTR(_check, _return, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); return _return;}
class Physics{
private:
  b2Vec2 gravity;

  b2BodyDef      dynamicbodydef;
  b2BodyDef      staticbodydef;
  b2FixtureDef   defaultFixtureDef;

  b2MassData     defaultMassData;
  
  b2CircleShape  primitiveCircle;
  b2PolygonShape primitiveRect;

  MyContactListener ContactListenerInstance;

  b2World* world;
  float timeStep;

  const uint32_t velocityIterations = 18;
  const uint32_t positionIteration = 15;
  
  void bodyDefInit();
  void fixtureDefInit();
  void circleShapeInit();
  void rectShapeInit();
  void polygonShapeInit();

  std::vector<Object*> PhysicalObjects;
public:

  Physics();
  ~Physics();
  
  inline std::vector<Object*>* GetObjectList()
  {
    return &PhysicalObjects;
  }
  
  #pragma GCC diagnostic ignored "-Wnarrowing"
  /// @brief Runs the box2d world step function
  void Update_Object();

  /// @brief Creates a dynamic circle object based on the defined primitive circle shape and body definition
  /// @param _pos Center position
  /// @param _rad The radius
  /// @return A pointer to the object created, nullptr if inputs are invalid.
  Object* CreateCircle(Vector2D _pos, float _rad);

  /// @brief Creates a dynamic rectangle object based on the polygonShape class on the heap.
  /// @param _pos Center position.
  /// @param wh Width and Height.
  /// @return A pointer to the object created, nullptr if inputs are invalid.
  Object* CreateRect(Vector2D _pos, Vector2D _wh);

  /// @brief Creates a static edge given two points.
  /// @param _pointA The starting point.
  /// @param _pointB The ending point.
  /// @return A pointer to the object created, nullptr if inputs are invalid.
  Object* CreateEdge(Vector2D _pointA, Vector2D _pointB);

  /// @brief Creates a polygon based on a given array of points.
  /// @param _pos Center position.
  /// @param _points List of Vector2D points.
  /// @param _size Length of List.
  /// @return A pointer to the object created, nullptr if inputs are invalid.
  Object* CreatePolygon(Vector2D _pos, b2Vec2* _points, size_t _size);

  /// @brief Creates a box from edges given the position and width and height.
  /// @param _position The center of the border.
  /// @param _wh The length from the center of the box.
  void SetBorders(Vector2D _position, Vector2D _wh);

  Object* RemoveObject(Object* _obj);
  
  void SetTimeStep(float ts);
  float GetTimeStep();


};

