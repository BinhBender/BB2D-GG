#include "time.h"

float Time::deltaTime = 0;
Time* Time::instance = nullptr;
Time::Time()
{

}

void Time::start_time()
{
  start = std::chrono::high_resolution_clock::now();
}

void Time::end_time()
{
  std::chrono::duration<float> duration = std::chrono::high_resolution_clock::now() - start;

  deltaTime = duration.count();
}

Time* Time::GetInstance()
{
  //printf("Creating new time object\n");
  if(instance == nullptr){
    instance = new Time();

  }
  return instance;
}

Time::~Time()
{
  delete instance;
}
