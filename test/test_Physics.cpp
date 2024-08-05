#include <core/Physics.h>
#include <core/Vector2D.h>
#include <windows.h>
#include <iostream>
#include <string>

#define CIRCLES 1
int main(){

  std::cout << "Physics grid test starting" << std::endl;
  Physics physics;
  physics.SetTimeStep(1.0f/60.0f);
  Object* edge = physics.CreateEdge({-100, -10}, {100, -10});
  printf("Edge Pos: %f %f\n", edge->GetPosition().x, edge->GetPosition().y);
  for(int i = 0; i < CIRCLES; i++){
    physics.CreateCircle({5 * i,5 * i},1);
  }

  std::vector<Object*>* objs = physics.GetObjectList();
  for(int i = 0; i < CIRCLES; i++){
    Vector2D pos = (*objs)[1]->GetPosition();
    printf("x: %f, y: %f\n", pos.x, pos.y);
  }
  printf("\n");
  printf("TimeStep: %f\n", physics.GetTimeStep());
  
  for(int i = 0; i < 600; i++){
    physics.Update_Object();
    Vector2D pos = (*objs)[1]->GetPosition();
    printf("Circle: x: %f, y: %f\n", pos.x, pos.y);
    printf("Edge Pos: %f %f\n", edge->GetPosition().x, edge->GetPosition().y);

  }
  for(int i = 0; i < CIRCLES; i++){
    Vector2D pos = (*objs)[1]->GetPosition();
    printf("x: %f, y: %f\n", pos.x, pos.y);
  }
  printf("\n");

}