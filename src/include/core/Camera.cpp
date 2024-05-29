#include "Camera.h"

Camera::Camera(){
  window = nullptr;
  renderer = nullptr;

  scaleX = 1;
  scaleY = 1;

}
Camera::Camera(SDL_Window * window, SDL_Renderer* renderer)
{
  this->window = window;
  this->renderer = renderer;
}

void Camera::render(ObjectArray objects, int size)
{
  // Sets the color that the screen will be cleared with.
  SDL_SetRenderDrawColor(renderer, 0X00, 0X00, 0X00, 0XFF);
  SDL_RenderClear(renderer);
  DrawCircles(objects, size);

  SDL_RenderPresent(renderer);
}

void Camera::DrawCircles(ObjectArray objects, int size)
{
  for(int i = 0; i < size; i++){
  SDL_SetRenderDrawColor(
    renderer, 
    objects[i]->render.color.r, 
    objects[i]->render.color.g, 
    objects[i]->render.color.b, 
    objects[i]->render.color.a
  );
    for(int j = 0; j < objects[i]->render.thickness; j++){
      DrawCircle(
        renderer,
        objects[i]->transform.Position.x * scaleX,
        objects[i]->transform.Position.y * scaleY,
        objects[i]->Radius + j
      );

    }
  }
}

void Camera::DrawCircle(SDL_Renderer * renderer, int32_t centreX, int32_t centreY, int32_t radius)
{
  int count = 0;
  const int32_t diameter = (radius * 2);
  
  int32_t x = (radius - 1);
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

void Camera::SetScale(float worldLimitX, float worldLimitY)
{
  scaleX = CAMERA_RESOLUTION_X / worldLimitX;
  scaleY = CAMERA_RESOLUTION_Y / worldLimitY;
  printf("Scale x %f, y %f", scaleX, scaleY);
}
