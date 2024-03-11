#include "Physics.h"

Physics::Physics()
{
}

void Physics::Update_Objects()
{
  for(int i = 0; i < GRID_X; i++){
    for(int j = 0; j < GRID_Y; j++){
      //When updating there are 3 steps
      //Move the objects
      for (int k = 0; k < bodies[i][j].size; k++){

        bodies[i][j].objects[k]->Move();
      }

      //Detect Collision
        /*How do we do this for different shapes?
          Square is different from cube
        */
      //Fix the objects
    }
  }
}

void Physics::Resolve_Collision(Object *objectA, Object *objectB)
{ 

}
