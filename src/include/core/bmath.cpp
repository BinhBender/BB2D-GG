#include "Bmath.h"



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

float easeOutBounce(float x){
  const float n1 = 7.5625;
  const float d1 = 2.75f;

  if (x < 1 / d1) {
    return n1 * x * x;
  } else if (x < 2 / d1) {
    return n1 * (x -= 1.5 / d1) * x + 0.75;
  } else if (x < 2.5 / d1) {
    return n1 * (x -= 2.25 / d1) * x + 0.9375;
  } else {
    return n1 * (x -= 2.625 / d1) * x + 0.984375;
  }
}

float easeInOutBounce(float x){
  return x < 0.5? (1 - easeOutBounce(1 - 2 * x)) / 2 : (1 + easeOutBounce(2 * x - 1)) / 2;
}