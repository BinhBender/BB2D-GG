#include "../src/include/core/Physics.h"
#include <iostream>

int main(){



  Physics physics;


  H_Sphere sphere;
  physics.AddObject(0, 0, sphere);


  physics.PrintGridAll();
}