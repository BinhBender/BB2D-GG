#include <core/Physics.h>
#include <core/Vector2D.h>
#include <windows.h>
#include <iostream>
#include <string>

#define AMOUNT 2

void printCubes(Object** _list, size_t _size){
  for(int i = 0; i < _size; i++){
    b2Shape::Type type = _list[i]->GetFixture()->GetType();

    switch(type){
      case b2Shape::Type::e_circle:
        printf("Circle: ");
      break;
      case b2Shape::Type::e_edge:
        printf("Edge: ");
      break;
      case b2Shape::Type::e_polygon:
        if(((b2PolygonShape*)(_list[i]->GetFixture()->GetShape()))->m_count > 4){
          //Rectangle!
          printf("Rectangle: ");
        }else{

          printf("Polygon: ");
        }
      break;

      
    }
    
    Vector2D pos = (_list)[i]->GetPosition();
    printf("x: %f, y: %f\n", pos.x, pos.y);
  }
}

void CubeStack(Physics* _phys, size_t _size){
  for(size_t i = 0; i < _size; i++){

    _phys->CreateRect({0, 5 * i}, {2, 2});
  }
}
int main(){

  std::cout << "Physics grid test starting" << std::endl;
  Physics physics;
  physics.SetTimeStep(1.0f/60.0f);
  Object* edge = physics.CreateEdge({-100, -10}, {100, -10});
  printf("Edge Pos: %f %f\n", edge->GetPosition().x, edge->GetPosition().y);
  CubeStack(&physics, AMOUNT);

  std::vector<Object*>* objs = physics.GetObjectList();
  printf("Starting Positions\n");
  printCubes(objs->data(), objs->size());
  printf("\n");
  printf("TimeStep: %f\n", physics.GetTimeStep());
  
  for(int i = 0; i < 600; i++){
    physics.Update_Object();
    printCubes(objs->data(), objs->size());

  }

  printf("Physics Test Finished Successfully\n");
  return EXIT_SUCCESS;
}