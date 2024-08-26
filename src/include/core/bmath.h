/*
  This includes a bunch of functions that are mathmatical operations that the cmath library does not have.
*/
#pragma once
#include <math.h>

#define PI 3.141592653589792f
 
#define RAD(x) x * PI / 180.0f
#define DEG(x) x * 180.0f / PI

#define COSRP(A,B,T) ((A-B)/2.0f) * cos(T * 2.0f * PI) + (A + B)/2.0f
#define SINRP(A,B,T) 2 * ((A-B)/2.0f) * sin(T * 2.0f * PI) + (A + B)/2.0f
#define LERP(A,B,T) A + ((B - A) * T)

/// @brief Converts a degree value into a radian
/// @param float Degree Value
/// @return float Radian value
inline float Radians(float);

/// @brief  Converts a radian value into a degree
/// @param  float Radian Value
/// @return float Degree
inline float Degree(float);

float easeOutBounce(float x);
float easeInOutBounce(float x);