#include "bmath.h"



float Radians(float degrees)
{
  return degrees * PI/180.0f;
}

float Degree(float radians)
{
  return radians * 180.0f/PI;
}

int B_Clamp(int a, int b, int source)
{
  if(source <= a){
    return a;
  }
  if(source >= b){
    return b;
  }
  return source;
}

float B_Clamp(float a, float b, float source)
{
  if (source <= a)
  {
    return a;
  }
  if (source >= b)
  {
    return b;
  }

  return source;
}
