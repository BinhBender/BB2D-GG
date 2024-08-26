#include "MapManager.h"

size_t MapManager::insertCommonData(Object *_obj, char *buffer)
{
  //The first byte in the buffer is reserved for the type
  //  of shape
  size_t index = sizeof(b2Shape::Type);
  //Position of the object
  ASSERT(index == 4 , "Size is messed up %i\n", index);
  b2Vec2 pos = _obj->b2GetPosition();
  index += insertData<b2Vec2>(&pos, index, buffer);

  //Rotation of the object
  float angle = _obj->GetFixture()->GetBody()->GetAngle();
  index += insertData<float>(&angle, index, buffer);

  //The color of the object
  index += insertData<SDL_Color>(&_obj->color, index, buffer);
  //printf("Saving RGBA: %u ", (int)buffer[index-4]);
  //Returns the next free starting byte
  return index;
}

size_t MapManager::saveCircleData(Object *_obj, char *buffer)
{
  size_t byteposition = insertCommonData(_obj, buffer);

  //Radius
  byteposition += insertData<float>(&_obj->GetShape()->m_radius, byteposition, buffer);

  return byteposition;

} 

size_t MapManager::savePolygonData(Object *_obj, char *buffer)
{
  size_t byteposition = insertCommonData(_obj, buffer);

  b2PolygonShape* shape = (b2PolygonShape*)_obj->GetShape();
  byteposition += insertData<int32>(&shape->m_count, byteposition, buffer); 

  b2Vec2* vertices = shape->m_vertices;
  
  for(int i = 0; i < shape->m_count; i++){
    //printf("Polygon %f, %f\n", vertices[i].x, vertices[i].y);
    byteposition += insertData<b2Vec2>(&vertices[i], byteposition, buffer);
  }

  return byteposition;
}

size_t MapManager::saveEdgeData(Object *_obj, char *buffer)
{  
  size_t index = insertCommonData(_obj, buffer);

  Vector2D pos = _obj->GetPosition();
  b2EdgeShape* edge = (b2EdgeShape*)_obj->GetShape();

  index += insertData<b2Vec2>(&edge->m_vertex1, index, buffer);
  index += insertData<b2Vec2>(&edge->m_vertex2, index, buffer);

  return index;
}
//WIP
size_t MapManager::saveChainData(Object *, char *buffer)
{
  printf("Chain not supported yet\n");
  return 0;
}

void MapManager::loadCommonData(ObjectDef* _objdef, std::ifstream* in)
{
  //Position
  loadData<b2Vec2>(&_objdef->position, in);
  printf("Pos: %4.2f, %4.2f\n", _objdef->position.x, _objdef->position.y);

  //Angle
  loadData<float>(&_objdef->angle, in);
  printf("angle: %4.2f\n", _objdef->angle);

  //Color
  loadData<SDL_Color>(&_objdef->color, in);
  //printf("R: %i,G: %i, B: %i, A: %i\n", _objdef->color.r, _objdef->color.g, _objdef->color.b, _objdef->color.a);

}
void MapManager::loadCircleData(ObjectDef *_objdef, std::ifstream * in)
{
  loadData<float>(&_objdef->shape->m_radius, in);
}
void MapManager::loadPolygonData(ObjectDef * _objdef, std::ifstream *in)
{
  b2PolygonShape* polygon = static_cast<b2PolygonShape*>(_objdef->shape);
  loadData<int32>(&polygon->m_count, in);
  for(int i = 0; i < polygon->m_count; i++){
    loadData<b2Vec2>(&polygon->m_vertices[i], in);
  }
}
void MapManager::loadEdgeData(ObjectDef *_objdef, std::ifstream *in)
{ 
  b2EdgeShape* shape = static_cast<b2EdgeShape*>(_objdef->shape);
  loadData<b2Vec2>(&shape->m_vertex1, in);
  loadData<b2Vec2>(&shape->m_vertex2, in);

}
void MapManager::loadChainData(ObjectDef *, std::ifstream * in)
{

}

std::vector<ObjectDef>* MapManager::LoadMap(std::string path)
{
  std::vector<ObjectDef>* list_of_objects = new std::vector<ObjectDef>();
  std::ifstream read_stream;
  read_stream.open(path, std::ios::in);
  ASSERT(read_stream.is_open(), "Invalid path to map\nReceived File:%s", path.c_str());
  
  while(!read_stream.eof()){
    //Get Type of object by reading the first byte
    b2Shape::Type shapetype;
    int dummy = 0;
    loadData<b2Shape::Type>(&shapetype, &read_stream);
    ObjectDef obj;
    printf("Type %i\n", shapetype);
    loadCommonData(&obj, &read_stream);
    switch(shapetype){
      case b2Shape::Type::e_circle:
        printf("Loaded Circle\n");
        obj.shape = new b2CircleShape();
        loadCircleData(&obj, &read_stream);
      break;
      case b2Shape::Type::e_edge:
        printf("Loaded e_edge\n");
        obj.shape = new b2EdgeShape();
        loadEdgeData(&obj, &read_stream);
      break;
      case b2Shape::Type::e_polygon:
        printf("Loaded e_polygon\n");
        obj.shape = new b2PolygonShape();
        loadPolygonData(&obj, &read_stream);
      break;
      case b2Shape::Type::e_chain:
        printf("Loaded e_chain\n");
        obj.shape = new b2ChainShape();
        loadChainData(&obj, &read_stream);
      break;

    }
    list_of_objects->push_back(obj);
  }
  read_stream.close();
  return list_of_objects;
}

bool MapManager::SaveMap(std::string path, Object** _objects, size_t size)
{
  std::ofstream file;
  file.open(path, std::ios::binary);
  ASSERT(file.is_open(), "Invalid path to map\nReceived File: \"%s\"", path.c_str());

/*
Common
  First half word  holds the type of object     4

  Next 2 half words is position for x and y     8
  Next half words is angle of the object        4
  Next hald word is the color                   4
Extra
  Next whatever 

*/
  char buffer[512];
  memset(buffer, 0, 512);
  for(size_t i = 0; i < size; i++){
    b2Shape::Type type = _objects[i]->GetType();
    insertData<b2Shape::Type>(&type, 0, buffer);
    
    size_t buffer_size = sizeof(b2Shape::Type);
    //Determine the type
    switch (type){
      case b2Shape::Type::e_circle:
        
        buffer_size = saveCircleData(_objects[i], buffer);
      break;
      case b2Shape::Type::e_edge:
        buffer_size = saveEdgeData(_objects[i], buffer);
      break;
      case b2Shape::Type::e_polygon:
        buffer_size = savePolygonData(_objects[i], buffer);
      break;
      case b2Shape::Type::e_chain:
        buffer_size = saveChainData(_objects[i], buffer);
      break;

    }
    //printf("Size written: %i\n", buffer_size);
    file.write(buffer, buffer_size);
  }
  file.close();
  return true;
}
