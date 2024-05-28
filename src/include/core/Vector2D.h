#pragma once

#include <cmath>
#include "../SDL2/SDL_rect.h"

typedef SDL_FPoint Vector2D;

float Magnitude(Vector2D);
float DotProduct(Vector2D, Vector2D);
float Distance(Vector2D, Vector2D);
Vector2D Normalize(Vector2D self);

#define Vector2_Zero {0,  0}
#define Vector2_Up   {0,  1}
#define Vector2_Down {0, -1}
#define Vector2_One  {1,  1}

void Rotate(float);

//Basic Arithmetics
Vector2D operator+(const Vector2D &self, const Vector2D &other);
Vector2D operator-(const Vector2D &self, const Vector2D &other);

Vector2D operator*(const Vector2D &self, const float &scalar);
Vector2D operator*(const float &scalar, const Vector2D &self);
Vector2D operator/(const Vector2D& self, const float& scalar);

void operator+=(Vector2D& self, const Vector2D& other);
void operator-=(Vector2D& self, const Vector2D& other);

//Conditionals
bool operator==(const Vector2D& self, const Vector2D& other);
bool operator!=(const Vector2D& self, const Vector2D& other);

//Extension for SDL_Point
bool operator!=(const SDL_Point& self, const SDL_Point& other);