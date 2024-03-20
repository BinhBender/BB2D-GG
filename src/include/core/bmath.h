/*
  This includes a bunch of functions that are mathmatical operations that the cmath library does not have.
*/
#pragma once
#include <math.h>

#define PI 3.14159f

//These definitions exist in case I'm ever too lazy 
#define RAD(x) x * PI / 180.0f
#define DEG(x) x * 180.0f / PI


/// @brief Converts a degree value into a radian
/// @param float Degree Value
/// @return float Radian value
float Radians(float);

/// @brief  Converts a radian value into a degree
/// @param  float Radian Value
/// @return float Degree
float Degree(float);

/// @brief  Clamps a number so that it only exists between the bounds of a and b
/// @param  a Lower limit of the clamp
/// @param  b Upper limit of the clamp
/// @param  source Input number to clamp
/// @return The resulting clampage
int B_Clamp(int a, int b, int source);

/// @brief  Clamps a number so that it only exists between the bounds of a and b
/// @param  a Lower limit of the clamp
/// @param  b Upper limit of the clamp
/// @param  source Input number to clamp
/// @return The resulting clampage
float B_Clamp(float a, float b, float source);
