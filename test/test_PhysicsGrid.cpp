#include "../src/include/core/Physics.h"
#include <iostream>
#include <string>
#include "../src/include/core/Time.h"

#define NUMOFSPHERES 1
#define UPDATEOBJECTS_COUNT 10

int main(){

  std::cout << "Physics grid test starting" << std::endl;
  Physics physics;
  Time* t = Time::GetInstance();
/*
  H_Sphere sphere = new Sphere();
  printf("Adding Sphere 1:\nExpected: %#p\n", sphere);
  sphere->Name = "Sphere 1";
  physics.AddObject({0, 0}, sphere);
  
  physics.PrintGrid(0,0);

  H_Sphere sphere2 = new Sphere();
  sphere2->Name = "Sphere 2";
  printf("\nTesting out-of-bounds\nAdding Sphere 2 in 20, 20:\nExpected: N/A\n");
  physics.AddObject({20,20}, sphere2);
  physics.PrintGrid(20,20);
  delete sphere2;

  H_Sphere sphere3 = new Sphere();
  sphere3->Name = "Sphere 3";
  printf("Adding Sphere 3:\nExpected: %#p\n", sphere3);
  physics.AddObject({0,0}, sphere3);
  physics.PrintGrid(0,0);

  sphere = new Sphere();
  sphere->Name = "Sphere 4";
  printf("Adding Sphere 4:\nExpected: %#p\n", sphere);
  physics.AddObject({0,0}, sphere);
  physics.PrintGrid(0,0);

  //Test for resize grid
  for(int i = 5; i < 20; i++){
    sphere = new Sphere();
    std::string name = "Sphere ";
    name += std::to_string(i);
    sphere->Name = name.c_str();
    printf("\nAdding Sphere %u:\nExpected: %#p\n", i, sphere);
    physics.AddObject({0,0}, sphere);
    physics.PrintGrid(0,0);

  }
*/

//Benchmarking :)

  t->start_time();
  for(int i = 0; i < 1; i++){
    H_Sphere sphere = new Sphere(1, {10, 10});
    //printf("\nAdding Sphere %u:\nExpected: %p\n", i, sphere);
    physics.AddObject({0,0}, sphere);
    //physics.PrintGrid(1,1);

  }
  t->end_time();                                                                                                                          
  printf("Time to create %u spheres: %fs\n",NUMOFSPHERES, t->deltaTime);

  double totaltime = 0;
  for(int i = 0; i < 200; i++){
    t->start_time();
    physics.Update_Object();
    t->end_time();
    totaltime += t->deltaTime;
  }
  double avg_time = totaltime/UPDATEOBJECTS_COUNT;
  printf("Total time: %f\nAverage time of update function: %fs\n",totaltime, avg_time);

  printf("Test Finished Successfully\n");
  return 0;

}