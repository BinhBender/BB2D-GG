#include "MapManager.h"

size_t MapManager::insertCommonData(Object *_obj, char *buffer)
{ 
  size_t position_format = 1;
  Vector2D* pos = (Vector2D*)(&buffer[position_format]);
  *pos = _obj->GetPosition();

  position_format += sizeof(Vector2D);
  float* rot = (float*)(&buffer[position_format]);
  *rot = _obj->GetFixture()->GetBody()->GetAngle();

  position_format += sizeof(float);
  SDL_Color* color = (SDL_Color*)(&buffer[position_format]);
  *color = _obj->color;
  
  return position_format + sizeof(SDL_Color);
}

size_t MapManager::saveCircleData(Object *_obj, char *buffer)
{
  size_t byteposition = insertCommonData(_obj, buffer);

  //Radius
  float* rad = (float*)(&buffer[byteposition]);
  *rad = _obj->GetShape()->m_radius;
  byteposition += sizeof(float);

  return byteposition;

}

size_t MapManager::savePolygonData(Object *_obj, char *buffer)
{
  size_t byteposition = insertCommonData(_obj, buffer);
  b2PolygonShape* shape = (b2PolygonShape*)_obj->GetShape();
  b2Vec2* vertices = shape->m_vertices;

  size_t* vertex_count = (size_t*)(&buffer[byteposition]); 
  *vertex_count = shape->m_count;
  byteposition += sizeof(size_t);
  for(int i = 0; i < *vertex_count; i++){
    float* pos = (float*)(&buffer[byteposition]);
    *pos = vertices->x;
    //pos += sizeof(float);
    byteposition += sizeof(float);
    
    pos = (float*)(&buffer[byteposition]);
    *pos = vertices->y;
    byteposition += sizeof(float);

  }

  return byteposition;
}

size_t MapManager::saveEdgeData(Object *_obj, char *buffer)
{  
  size_t byteposition = insertCommonData(_obj, buffer);

  Vector2D pos = _obj->GetPosition();
  b2EdgeShape* edge = (b2EdgeShape*)_obj->GetShape();

  float* pointAx = (float*)(&buffer[byteposition]);
  *pointAx = edge->m_vertex1.x;
  byteposition+= sizeof(float);

  float* pointAy = (float*)(&buffer[byteposition]);
  *pointAy = edge->m_vertex1.y;
  byteposition+= sizeof(float);

  float* pointBx = (float*)(&buffer[byteposition]);
  *pointBx = edge->m_vertex2.x;
  byteposition+= sizeof(float);

  float* pointBy = (float*)(&buffer[byteposition]);
  *pointBy = edge->m_vertex2.y;
  byteposition+= sizeof(float);

  return byteposition;
}

size_t MapManager::saveChainData(Object *, char *buffer)
{
  return 0;
}

bool MapManager::loadCommonData()
{
  return false;
}

//TODO: EVERYTHING
std::vector<Object *> *MapManager::LoadMap(std::string path)
{
  map.open(path, std::fstream::in);
  ASSERT(map.is_open(), "Invalid path to map\nReceived File:%s", path.c_str());
  char buffer[512];
  while(!map.eof()){
    //b2Shape::Type typeobj = ;

  }

  return nullptr;
}

bool MapManager::SaveMap(std::string path, Object** _objects, size_t size)
{
  std::fstream file;
  file.open(path, std::ios::out | std::ios::binary);
  ASSERT(file.is_open(), "Invalid path to map\nReceived File: \"%s\"", path.c_str());

/*
  First byte is always holds the type of object
  Next 2 words is position for x and y
  Next 2 words is rotation in x and y axis
  Next whatever 

*/
  char buffer[512];
  size_t pushed = 1;
  for(size_t i = 0; i < size; i++){
    buffer[0] = _objects[i]->GetType();
    
    //Determine the type
    switch (b2Shape::Type(buffer[0])){
      case b2Shape::Type::e_circle:
        pushed += saveCircleData(_objects[i], buffer);
      break;
      case b2Shape::Type::e_edge:
        pushed += saveEdgeData(_objects[i], buffer);
      break;
      case b2Shape::Type::e_polygon:
        pushed += savePolygonData(_objects[i], buffer);
      break;
      case b2Shape::Type::e_chain:
        pushed += saveChainData(_objects[i], buffer);
      break;

    }

    file.write(buffer, pushed);
  }
  file.close();
  return true;
}
