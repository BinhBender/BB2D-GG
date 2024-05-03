#include "../src/include/core/Time.h"
#include <iostream>
#include <thread>

/*
  Ideally nothing should be touching the start_time() and 
  end_time() function other than the engine_system class loop

  All users of time should only be using 
    Time::deltaTime

*/

int main(){

  Time* t = Time::GetInstance();
  std::cout << "Start Time\n";
  t->start_time();
  
  std::cout << "Deltatime inside:\nExpected: 0\nActual: " << Time::deltaTime << std::endl;

  std::this_thread::sleep_for(std::chrono::seconds(5));
  t->end_time();
  
  std::cout << "Deltatime outside:\nExpected: 5\nActual: " << Time::deltaTime << std::endl;


}