#pragma once
#include <fstream>
#include <string>
#include <vector>
#include <core/Object.h>
#include <box2d/b2_body.h>
#include <box2d/b2_shape.h>
#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}

class MapManager{
private:
  std::fstream map;
  size_t insertCommonData(Object*, char *buffer);
  /// @brief 
  /// @param  
  /// @param buffer 
  /// @return 
  size_t saveCircleData(Object*, char *buffer);

  /// @brief 
  /// @param  
  /// @param buffer 
  /// @return 
  size_t savePolygonData(Object*, char *buffer);

  /// @brief 
  /// @param  
  /// @param buffer 
  /// @return 
  size_t saveEdgeData(Object*, char *buffer);

  /// @brief 
  /// @param  
  /// @param buffer 
  /// @return 
  size_t saveChainData(Object*, char *buffer);

  bool loadCommonData();
  bool loadCircleData();
  bool loadPolygonData();
  bool loadEdgeData();
  bool loadChainData();

public:

  std::vector<Object*>* LoadMap(std::string path);
  bool SaveMap(std::string path, Object** _objects, size_t size);
};