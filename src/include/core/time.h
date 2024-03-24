#include <chrono>
#include <thread>


class Time{

private:
  std::chrono::_V2::system_clock::time_point start;
  Time* instance;
  Time();

public: 
  static float deltaTime; //The delta of the start and end of the frame.

  void start_time();  //When the frame starts
  void end_time();    //At the end of the frame

  Time* GetInstance();

  ~Time();
};

float Time::deltaTime = 0;