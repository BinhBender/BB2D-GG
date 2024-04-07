#pragma once

#include <cmath>
#include "../SDL2/SDL_rect.h"

typedef SDL_FPoint Vector2D;

float Magnitude(Vector2D);
float DotProduct(Vector2D, Vector2D);
float Distance(Vector2D, Vector2D);
Vector2D Normalize(Vector2D self);

static Vector2D Vector2_Zero = Vector2D{0,  0};
static Vector2D Vector2_Up   = Vector2D{0,  1};
static Vector2D Vector2_Down = Vector2D{0, -1};
static Vector2D Vector2_One  = Vector2D{1,  1};

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
