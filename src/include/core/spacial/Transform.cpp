#include "Transform.h"
Transform::Transform(){
  Position = Vector2D::Zero();
  Rotation = Vector2D::Zero();
}
Transform::Transform(Vector2D pos){
  Position = pos;
  Rotation = Vector2D::Zero();
  Rotation = Vector2D::Zero();
}
Transform::Transform(Vector2D pos, Vector2D rot, Vector2D sca){
  Position = pos;
  Rotation = rot;
  Scale = sca;
}

Vector2D Transform::Move(Vector2D vector){
  this->Position = this->Position + vector;
  return this->Position;
}

