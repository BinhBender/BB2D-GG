#include "Camera.h"



Camera::Camera()
{
  window = nullptr;
  renderer = nullptr;

  scaleX = 1;
  scaleY = 1;
}
Camera::Camera(SDL_Window * window, SDL_Renderer* renderer)
{
  ASSERT(window != nullptr, "Window is nullptr\n");  
  ASSERT(renderer != nullptr, "Renderer is nullptr\n");

  
  this->window = window;
  this->renderer = renderer;
  defaultCircleFilled = create_circle_texture(100);
  if(defaultCircleFilled != nullptr){
    printf("Created Circle!\n");
  }
}

Camera::~Camera()
{
  SDL_DestroyTexture(defaultCircleFilled);
}

SDL_Texture* Camera::create_circle_texture(int diameter)
{
  SDL_Texture* texture = SDL_CreateTexture(
    renderer, 
    SDL_PixelFormatEnum::SDL_PIXELFORMAT_RGBA8888, 
    SDL_TextureAccess::SDL_TEXTUREACCESS_STATIC,
    diameter,
    diameter
  );


  uint32_t radius = diameter / 2;
  Vector2D center = {radius, radius};

  uint32_t pixels[diameter * diameter];
  //Goes through the x and y on the square plane and checks if the coordinate
  //  is out of the radius
  for(int i = 0; i < diameter; i++){
    for(int j = 0; j < diameter; j++){
      pixels[i * diameter + j] = Distance({j,i}, center) < radius ? 0xffffffff: 0;
    }
  }
  ASSERT(texture!=nullptr, "%s", SDL_GetError());
  SDL_UpdateTexture(texture, NULL, pixels, sizeof(uint32_t) * diameter);
  SDL_SetTextureBlendMode(texture, SDL_BLENDMODE_BLEND);

  return texture;
}
void Camera::render(Object* list, size_t size)
{
  // Sets the color that the screen will be cleared with.
  SDL_SetRenderDrawColor(renderer, 0X00, 0X00, 0X00, 0XFF);
  SDL_RenderClear(renderer);
  DrawCirclesFilled(list, size);
  DrawForces(list, size);
  SDL_RenderPresent(renderer);
}
void Camera::DrawForces(Object* objects, size_t size){
  for(int i = 0; i < size; i ++){
    if(objects[i].GetForce() != Vector2_Zero){
      
      Vector2D forceStart = objects[i].GetPosition();

      Vector2D forceDestination = objects[i].GetPosition() + (objects[i].GetForce() * 50);
      SDL_RenderDrawLineF(renderer, forceStart.x, forceStart.y, forceDestination.x, forceDestination.y); 
    }
  }
}
void Camera::DrawCircles(Object* list, size_t size)
{
  for(int i = 0; i < size; i++){
    SDL_SetRenderDrawColor(
      renderer, 
      list[i].r
      list[i].g, 
      list[i].b, 
      list[i].a
    );
    DrawCircle(
      renderer,
      objects[i]
    );

    
  }
}

void Camera::DrawCircle(SDL_Renderer * renderer, const Object& obj)
{
  int32_t centreX = obj->transform.Position.x;
  int32_t centreY = obj->transform.Position.y; 
  int32_t radius = obj->Radius;
  
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

void Camera::DrawCircleFilled(SDL_Renderer *renderer, const Object& obj)
{
  ASSERT(obj.GetShape() == b2Shape::Type::e_circle, "SHAPE IS NOT A CIRCLE");
  SDL_Rect dst = {
    obj.GetPosition().x - obj->Radius, 
    obj.GetPosition().y - obj->Radius, 
    //Diameter
    obj->Radius * 2, 
    obj->Radius * 2
  };
  
  ASSERT(SDL_RenderCopy(renderer, defaultCircleFilled, NULL, &dst) == 0, "%s", SDL_GetError());
}

void Camera::DrawCirclesFilled(Object* list, size_t count)
{
  for(int i = 0; i < count; i++){
    SDL_SetTextureColorMod(
      defaultCircleFilled, 
      objects[i].r, 
      objects[i].g, 
      objects[i].b
    );
    DrawCircleFilled(
      renderer,
      objects[i]
    );

    
  }
}

void Camera::SetScale(float worldLimitX, float worldLimitY)
{
  scaleX = float(RESOLUTION_X) / worldLimitX;
  scaleY = float(RESOLUTION_Y) / worldLimitY;
  printf("Scale x %f, y %f\n", scaleX, scaleY);
}
