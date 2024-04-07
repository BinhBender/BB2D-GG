#include "Physics.h"
#include "scene.h"
#include "time.h"
#include "Camera.h"




class Engine_System{
  //This will be where the loops of the function will go, with the main.cpp holding EVERYTHING together
  Physics phy;


  void main_loop();
    //Order 
    /*
      Timer starts
      Render
      Physics
      ...

      
      Time ends


    */

};