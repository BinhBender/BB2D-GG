#include "../src/include/core/Physics.h"
#include <iostream>


int main(){

  std::cout << "Physics grid test starting" << std::endl;
  Physics physics;


  H_Sphere sphere = new Sphere();
  printf("Adding Sphere 1:\nExpected: %p\n", sphere);
  physics.AddObject(0, 0, sphere);
  
  physics.PrintGrid(0,0);

  H_Sphere sphere2 = new Sphere();
  printf("\nTesting out-of-bounds\nAdding Sphere 2 in 20, 20:\nExpected: N/A\n");
  physics.AddObject(20,20, sphere2);
  physics.PrintGrid(20,20);
  delete sphere2;

  H_Sphere sphere3 = new Sphere();
  printf("Adding Sphere 3:\nExpected: %p\n", sphere3);
  physics.AddObject(0,0, sphere3);
  physics.PrintGrid(0,0);

  sphere = new Sphere();
  printf("Adding Sphere 4:\nExpected: %p\n", sphere);
  physics.AddObject(0,0, sphere);
  physics.PrintGrid(0,0);

  //Test for resize grid
  for(int i = 5; i < 20; i++){
    sphere = new Sphere();
    printf("\nAdding Sphere %u:\nExpected: %p\n", i, sphere);
    physics.AddObject(0,0, sphere);
    physics.PrintGrid(0,0);

  }
  
  for(int i = 0; i < 30; i++){
    sphere = new Sphere();
    printf("\nAdding Sphere %u:\nExpected: %p\n", i, sphere);
    physics.AddObject(1,1, sphere);
    physics.PrintGrid(1,1);

  }
  printf("Start Update_Object:\n");
  physics.Update_Object();
  printf("End Update_Object:\n");


}