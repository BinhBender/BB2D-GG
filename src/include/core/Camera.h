#pragma once
#include <SDL2/SDL.h>

#include "bmath.h"
#include "Physics.h"
#include "Object.h"
#include "time.h"
#include <cmath>
#include <vector>

#define CAMERA_FPS_30 30
#define CAMERA_FPS_60 60
#define CAMERA_FPS_144 144
#define CAMERA_FPS_UNLIMITED -1

#define DEFAULT_CIRCLE_RESOLUTION 50
#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}


class Camera{
private:
  Time* t;
  int FPS = CAMERA_FPS_60;
  float scale;

  //Can support up to 8 vertices
  int defaultConvexPolygonIndicies[b2_maxPolygonVertices * 3];
  SDL_Texture* defaultCircleFilled;

  SDL_Window* window;
  SDL_Renderer* renderer;

  SDL_Texture* create_circle_texture(int diameter);
  void update_Resolution();
  void init();

public:
  
  Vector2D position;
  int RESOLUTION_X;
  int RESOLUTION_Y;

  Camera();
  Camera(SDL_Window*, SDL_Renderer*);
  ~Camera();

  void render(Object** list, size_t size);

  void DrawForces(Object** list, size_t size);
  void DrawObjects(Object** list, size_t size);

  /// @brief Draws a circle based on a preset circle texture using world coordinates.
  /// @param _position pointer to the object
  /// @param _radius A pointer to the object
  void DrawCircleFilled(const Vector2D _position, const float _radius, const SDL_Color, float _rotation);
//  void DrawCirclesFilled(Object**, size_t size);

  /// @brief The center of the camera in world space
  /// @return Vector2D of the center in world space
  inline Vector2D GetCenter(){
    Vector2D center = position - GetResolution()/2;
    center.x = -center.x;
    return center;
  }

  /// @brief Draws an edge/line from point A to point B using world coordinates.
  /// @param _pointA Vector2D of point A
  /// @param _pointB Vector2D of point B
  void DrawEdge(Vector2D _pointA, Vector2D _pointB, const SDL_Color);


  /// @brief Draws a rectangle given the width and height, cannot be rotated.
  /// @param _pos Position of the rectangle
  /// @param _wh Width and Height -> X and Y
  /// @param _color An RGBA struct
  void DrawRectangle(Vector2D _pos, Vector2D _wh, const SDL_Color _color);

  /// @brief Draws a polygon based on the given verticies using world coordinates. Only supports convex polygons.
  /// @param verticies Array of vertices 
  /// @param count Amount of points
  void DrawPolygon(const SDL_Vertex* vertices, const size_t count, const SDL_Color);

  void SetScale(float);

  void SetFPS(int);

  inline Vector2D ScreenSpaceToWorldSpace(Vector2D _screenPosition){
    Vector2D offset = GetCenter();
    return {
      ((_screenPosition.x - (RESOLUTION_X / 2)) / scale) + offset.x,
      ((_screenPosition.y - (RESOLUTION_Y / 2)) / -scale) + offset.y
    };
  }

  inline Vector2D WorldSpaceToScreenSpace(Vector2D _worldPosition){
    Vector2D offset = GetCenter();
    return {(_worldPosition.x - offset.x) * scale + (RESOLUTION_X/2),((_worldPosition.y - offset.y) * -scale) + (RESOLUTION_Y/2)};
  }

  Vector2D GetResolution();
  
};