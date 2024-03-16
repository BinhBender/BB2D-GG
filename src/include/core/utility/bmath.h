/*
  This includes a bunch of functions that are mathmatical operations that the cmath library does not have.
*/
#pragma once
#define PI 3.14159f


/// @brief Converts a degree value into a radian
/// @param float Degree Value
/// @return float Radian value
inline constexpr float Radians(float);

/// @brief  Converts a radian value into a degree
/// @param  float Radian Value
/// @return float Degree
inline constexpr float Degree(float);

/// @brief  Clamps a number so that it only exists between the bounds of a and b
/// @param  a Lower limit of the clamp
/// @param  b Upper limit of the clamp
/// @param  source Input number to clamp
/// @return The resulting clampage
inline constexpr int Clamp(int, int, int);

/// @brief  Clamps a number so that it only exists between the bounds of a and b
/// @param  a Lower limit of the clamp
/// @param  b Upper limit of the clamp
/// @param  source Input number to clamp
/// @return The resulting clampage
inline constexpr int Clamp(float, float, float);