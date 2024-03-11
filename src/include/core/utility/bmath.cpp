#include "bmath.h"



inline constexpr float Radians(float degrees)
{
  return degrees * PI/180.0f;
}

inline constexpr float Degree(float radians)
{
  return radians * 180.0f/PI;
}
