#include <chrono>
#include <thread>
#include <cstdio>
#pragma once

class Time{

private:
  
  std::chrono::_V2::system_clock::time_point start;
  static Time* instance;
  Time();

public: 
  static float deltaTime; //The delta of the start and end of the frame.

  static Time* GetInstance();
  void start_time();  //When the frame starts
  void end_time();    //At the end of the frame


  ~Time();
};

