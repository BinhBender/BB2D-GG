#include "Camera.h"



Camera::Camera()
{
  window = nullptr;
  renderer = nullptr;

  scale = 1;
}
Camera::Camera(SDL_Window * window, SDL_Renderer* renderer)
{
  ASSERT(window != nullptr, "Window is nullptr, Error: %s\n", SDL_GetError());  
  ASSERT(renderer != nullptr, "Renderer is nullptr, Error: %s\n", SDL_GetError());

  this->defaultCircleFilled = nullptr;
  this->window = window;
  this->renderer = renderer;
  init();
  scale = 1;
  //Puts center of the camera in the origin of world space
  position = GetResolution() / 2;
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


  float radius = float(diameter) / 2.0f;
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
void Camera::update_Resolution()
{
  Vector2D rs = GetResolution();
  RESOLUTION_X = rs.x;
  RESOLUTION_Y = rs.y;
}
void Camera::init()
{
  //The order of convex polygon indicies are all the same
  for(size_t i = 0; i < b2_maxPolygonVertices; i++){
    defaultConvexPolygonIndicies[i*3] = 0;
    defaultConvexPolygonIndicies[i*3 + 1] = i + 1;
    defaultConvexPolygonIndicies[i*3 + 2] = i + 2; 
  }
  
  //A higher diameter will result in a higher resolution
  //Position of rendered circle gets more inaccurate the lower the resolution
  defaultCircleFilled = create_circle_texture(100);
}
void Camera::render(Object **list, size_t size)
{

  // Sets the color that the screen will be cleared with.
  SDL_SetRenderDrawColor(renderer, 0X00, 0X00, 0X00, 0XFF);
  SDL_RenderClear(renderer);
  DrawObjects(list, size);
  //DrawForces(list, size);
  SDL_RenderPresent(renderer);
}
void Camera::DrawForces(Object** objects, size_t size){
  for(int i = 0; i < size; i ++){
    if(objects[i]->GetForce() != Vector2_Zero){
      
      Vector2D forceStart = objects[i]->GetPosition();

      Vector2D forceDestination = objects[i]->GetPosition() + (objects[i]->GetForce() * 50);
      SDL_RenderDrawLineF(renderer, forceStart.x, forceStart.y, forceDestination.x, forceDestination.y); 
    }
  }
}
void Camera::DrawObjects(Object **list, size_t size)
{
  //printf("drawobjects\n");
  for(size_t i = 0; i < size; i++){
    b2Body* body = list[i]->GetFixture()->GetBody();
    Vector2D bodyPosition = {body->GetPosition().x, body->GetPosition().y};

    switch(list[i]->type){
      case b2Shape::Type::e_circle:
        { 
        //printf("drawing circle");
        //Recasting the shape pointer as an edge shape to access radius
        b2CircleShape* circle = static_cast<b2CircleShape*>(list[i]->GetShape());
        DrawCircleFilled(circle->m_p + bodyPosition, circle->m_radius, list[i]->color);
      break;
        }
      case b2Shape::Type::e_edge:
        {
          //Recasting the shape pointer as an edge shape to access vertex 1 & 2
        b2EdgeShape* edge = static_cast<b2EdgeShape*>(list[i]->GetShape());
        DrawEdge(edge->m_vertex1 + bodyPosition, edge->m_vertex2 + bodyPosition, list[i]->color);
      break;
        }
      case b2Shape::Type::e_polygon:
        {
        //Recasting the shape pointer as a polygon so that we could access the vertices
        b2PolygonShape* polygon = ((b2PolygonShape*)(list[i]->GetShape()));
        int count = polygon->m_count;
        
        //Array of vertices for SDL_RenderGeometry
        SDL_Vertex vertices[b2_maxPolygonVertices];

        for(int i = 0; i < count; i++){
          //Matching up the local coordinates with world space coordinates
          vertices[i].position = WorldSpaceToScreenSpace(Vector2D{polygon->m_vertices[i].x, polygon->m_vertices[i].y} + bodyPosition) ;

        }
        DrawPolygon(vertices, count, list[i]->color);
      break;
        }

      
    }
  }
}
/*
void Camera::DrawCircles(Object **list, size_t size)
{
  for(int i = 0; i < size; i++){
    SDL_SetRenderDrawColor(
      renderer, 
      list[i]->r,
      list[i]->g, 
      list[i]->b, 
      list[i]->a
    );
    DrawCircle(
      renderer,
      objects[i]
    );

    
  }
}
*/

void Camera::DrawCircle(const Vector2D _position, const float _radius, const SDL_Color _color)
{
  int32_t centreX = _position.x;
  int32_t centreY = _position.y; 
  
  const int32_t diameter = (_radius * 2);

   int32_t x = (_radius - 1);
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

void Camera::DrawCircleFilled(const Vector2D _position, const float _radius, const SDL_Color _color)
{

  ASSERT(defaultCircleFilled != nullptr, "Drawing a filled circle without a texture set, please use init() before using the draw");
  SDL_SetTextureColorMod(defaultCircleFilled,
    _color.r,
    _color.g, 
    _color.b
  );
  Vector2D newpos = WorldSpaceToScreenSpace({_position.x - _radius, _position.y + _radius});
  SDL_Rect dst = {
    newpos.x, 
    newpos.y, 
    //Diameter
    _radius * 2 * scale, 
    _radius * 2 * scale
  };
  
  ASSERT(SDL_RenderCopy(renderer, defaultCircleFilled, NULL, &dst) == 0, "Draw Circle Error: %s", SDL_GetError());
}


void Camera::DrawEdge(Vector2D _pointA, Vector2D _pointB, const SDL_Color _color)
{
  SDL_BlendMode bm = SDL_BLENDMODE_ADD;
  SDL_SetRenderDrawBlendMode(renderer, bm);
  SDL_SetRenderDrawColor(
    renderer, 
    _color.r,
    _color.g, 
    _color.b, 
    _color.a
  );
  Vector2D SSposA = WorldSpaceToScreenSpace(_pointA);
  Vector2D SSposB = WorldSpaceToScreenSpace(_pointB);
  
  SDL_RenderDrawLineF(renderer, SSposA.x, SSposA.y, SSposB.x, SSposB.y);
}

void Camera::DrawRectangle(Vector2D _pos, Vector2D wh, const SDL_Color _color)
{
  SDL_SetRenderDrawColor(
    renderer, 
    _color.r,
    _color.g, 
    _color.b, 
    _color.a
  );

  Vector2D newpos = WorldSpaceToScreenSpace({_pos.x - wh.x/2, _pos.y + wh.y/2});

  SDL_Rect rect{
    newpos.x,
    newpos.y,
    wh.x * scale,
    wh.y * scale
  };
  //SDL_RenderDrawRect(renderer, &rect);
  SDL_RenderFillRect(renderer, &rect);
}

void Camera::DrawPolygon(const SDL_Vertex *vertices, const size_t count, const SDL_Color _color)
{
  SDL_SetRenderDrawColor(
    renderer, 
    _color.r,
    _color.g, 
    _color.b, 
    _color.a
  );
  SDL_RenderGeometry(
    renderer, nullptr, 
    vertices, count, 
    defaultConvexPolygonIndicies, (count - 2) * 3
  );

}

void Camera::SetScale(float _scale)
{
  scale = _scale;
}

inline Vector2D Camera::GetResolution()
{
  ASSERT(window != nullptr, "Trying to get resolution with no window");
  SDL_GetWindowSizeInPixels(window,&RESOLUTION_X, &RESOLUTION_Y);
  return Vector2D{ RESOLUTION_X, RESOLUTION_Y};
}
