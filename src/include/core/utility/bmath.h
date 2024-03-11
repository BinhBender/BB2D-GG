/*
  This includes a bunch of functions that are mathmatical operations that the cmath library does not have.
*/
#pragma once
#define PI 3.14159f


/// @brief Converts a degree value into a radian
/// @param float Degree Value
/// @return float Radian value
constexpr float Radians(float);

/// @brief  Converts a radian value into a degree
/// @param  float Radian Value
/// @return float Degree
constexpr float Degree(float);

