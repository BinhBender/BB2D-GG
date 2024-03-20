#include "Vector2D.h"
 

/*
  A mesh is a collection of vertices/points formed into a triangle.
  
  The position of the meshes are dealt in local space
*/

class Mesh{
private:

public:
  Mesh();
  ~Mesh();

  Vector2D *vertices;
  int* indicies;
  int indicies_size;

  void AddPoints(Vector2D*);
  void AddConnections(int*);
};