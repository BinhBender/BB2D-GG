#include "bmath.h"



inline constexpr float Radians(float degrees)
{
  return degrees * PI/180.0f;
}

inline constexpr float Degree(float radians)
{
  return radians * 180.0f/PI;
}

inline constexpr int Clamp(int a, int b, int source)
{
  if(source < a){
    return a;
  }
  if(source > b){
    return b;
  }
  return source;
}

inline constexpr int Clamp(float a, float b, float source)
{
  if (source < a)
  {
    return a;
  }
  if (source > b)
  {
    return b;
  }

  return source;
}
