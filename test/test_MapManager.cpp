#include <core/MapManager.h>
#include <core/Physics.h>
#include <random>
#define ITEM_COUNT 15
void addObjects(Physics* physics){
  std::mt19937 mt(time(0));
  /*
  for(int i = 0 ; i < ITEM_COUNT; i++ ){
    Vector2D location{mt() % 1500, mt() % 1500};
    
    printf("Object %2i: %4.0f, %4.0f ", i, location.x, location.y);
    if(((i % 5) + 1) == 5){ printf("\n"); }else printf(" | ");
    Object* obj = physics->CreateCircle(location, 20);
    obj->color = SDL_Color{255,255,255,255};

  }*/
  for(int i = 0 ; i < ITEM_COUNT; i++ ){
    Vector2D location{mt() % 1500, mt() % 1500};
    printf("Object %2i: %4.0f, %4.0f ", i, location.x, location.y);
    if(((i % 5) + 1) == 5){ printf("\n"); }else printf(" | ");
    Object* obj = physics->CreateRect(location, {5, 5});
    obj->color = SDL_Color{255,255,255,255};
  }
  for(int i = 0 ; i < ITEM_COUNT; i++ ){    
    Vector2D location1{mt() % 1500, mt() % 1500};
    Vector2D location2{mt() % 1500, mt() % 1500};
    printf("Object %2i: %4.0f, %4.0f || %4.0f, %4.0f ", i, location1.x, location1.y, location2.x, location2.y);
    if(((i % 3) + 1) == 3){ printf("\n"); }else printf(" | ");
    physics->CreateEdge(location1, location2);
  }
  
  

}

void printfromdef(ObjectDef* list, size_t size){
  for(int i = 0; i < size; i ++){
    printf("Object %02i | Type: %i | Location: %*.2f, %*.2f | Angle: %3.2f\n", i, list[i].shape->m_type, 4, list[i].position.x, 4, list[i].position.y, list[i].angle);
  }
}

void check_data(ObjectDef* list, size_t objdefsize, Object** objlist, size_t objlistsize){
  for(int i = 0; i < objdefsize; i++){
    std::string typecorrect = list[i].shape->m_type == objlist[i]->shape->m_type ? "\e[32m" : "\e[31m";
    std::string LocationCorrect  = list[i].position == objlist[i]->b2GetPosition() ? "\e[32m" : "\e[31m";
    std::string AngleCorrect  = list[i].angle == objlist[i]->GetBody()->GetAngle() ? "\e[32m" : "\e[31m";
    printf("Object %02i | %sType: %i\e[0m | %sLocation: %*.2f, %*.2f\e[0m | %sAngle: %3.2f\e[0m\n",
     i, typecorrect.data(),
     list[i].shape->m_type, 
     LocationCorrect.data(),
     4, list[i].position.x, 
     4, list[i].position.y, 
     AngleCorrect.data(),
     list[i].angle);
  }
}
int main(){
  std::string filename = "testmap1.map";
  MapManager mm;
  Physics physics;
  addObjects(&physics);

  printf("Saving list of objects to \"%s\"\n", filename.data());
  std::vector<Object*>* objlist = physics.GetObjectList(); 
  mm.SaveMap("testmap1.map", objlist->data(), objlist->size());


  printf("Loading list of objects to  \"%s\"\n", filename.data());
  std::vector<ObjectDef>* objdeflist = mm.LoadMap("testmap1.map");
  //printfromdef(objdeflist->data(), objdeflist->size());
  check_data(objdeflist->data(), objdeflist->size(), objlist->data(), objlist->size());
  delete objdeflist;

  printf("Finished successful\n");
  return 0;
}