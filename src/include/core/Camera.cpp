#include "Camera.h"

Camera::Camera(SDL_Window * window, SDL_Renderer* renderer)
{
  this->window = window;
  this->renderer = renderer;
}

void Camera::render(void *objects, int size)
{
}

void Camera::DrawCircles(H_Sphere *objects, int size)
{
  //Wow! so hard
  for(int i = 0; i < size; i++){
    DrawCircle(objects[i]);
  }
}

void Camera::DrawCircle(H_Sphere object)
{
  // https://en.wikipedia.org/w/index.php?title=Midpoint_circle_algorithm&oldid=889172082#C_example
  const int32_t diameter = (object->Radius * 2);

  int32_t centreX = object->transform.Position.x;
  int32_t centreY = object->transform.Position.y;

  int32_t x = (object->Radius - 1);
  int32_t y = 0;
  int32_t tx = 1;
  int32_t ty = 1;
  int32_t error = (tx - diameter);

  while (x >= y)
  {
    //  Each of the following renders an octant of the circle
    SDL_RenderDrawPoint(renderer, centreX + x, centreY - y);
    SDL_RenderDrawPoint(renderer, centreX + x, centreY + y);
    SDL_RenderDrawPoint(renderer, centreX - x, centreY - y);
    SDL_RenderDrawPoint(renderer, centreX - x, centreY + y);
    SDL_RenderDrawPoint(renderer, centreX + y, centreY - x);
    SDL_RenderDrawPoint(renderer, centreX + y, centreY + x);
    SDL_RenderDrawPoint(renderer, centreX - y, centreY - x);
    SDL_RenderDrawPoint(renderer, centreX - y, centreY + x);

    if (error <= 0)
    {
      ++y;
      error += ty;
      ty += 2;
    }

    if (error > 0)
    {
      --x;
      tx += 2;
      error += (tx - diameter);
    }
  }
}
