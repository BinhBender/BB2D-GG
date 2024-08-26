#pragma once
#include <fstream>
#include <string>
#include <vector>
#include <memory>
#include <core/Object.h>
#include <box2d/b2_body.h>
#include <box2d/b2_shape.h>
#define ASSERT(_check, ...) if(!(_check)){ (void)fprintf(stderr, __VA_ARGS__); exit(1);}

class MapManager{
private:
  /// @brief Inserts data into buffer
  /// @tparam T Data type to push
  /// @param data The address to the data
  /// @param index The starting index of the buffer
  /// @param buffer A char buffer for each byte
  /// @return The amount of bytes that have been pushed to the buffer
  template<typename T>
  size_t insertData(T* data, size_t index, char* buffer)
  {
    T* interpreter = (T*)(&buffer[index]);
    *interpreter = *data;
    return sizeof(T);
  }
  /// @brief Loads data from the input stream
  /// @tparam T The data type to extract
  /// @param data Address to the data
  /// @param in The stream to read from.
  template<typename T>
  void loadData(T* data, std::ifstream* in){
    in->read((char*)(data), sizeof(T));
  }

  /// @brief 
  /// @param  
  /// @param buffer 
  /// @return 
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

  void loadCommonData(ObjectDef*, std::ifstream* in);
  void loadCircleData(ObjectDef*, std::ifstream* in);
  void loadPolygonData(ObjectDef*, std::ifstream* in);
  void loadEdgeData(ObjectDef*, std::ifstream* in);
  void loadChainData(ObjectDef*, std::ifstream* in);

public:
  MapManager(){}
  ~MapManager(){}
  std::vector<ObjectDef>* LoadMap(std::string path);
  bool SaveMap(std::string path, Object** _objects, size_t size);
};