#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <SDL2/SDL.h>

#define SCREEN_X 1280
#define SCREEN_Y 720

int main(int argv, char** args){
  int running = 1;

  Engine_System engine_System(SCREEN_X, SCREEN_Y);
  
  engine_System.init();
  Input* input = Input::GetInstance();
  SDL_Point mousePos;
    SDL_GetMouseState(&mousePos.x, &mousePos.y);
  while(running){

    
    running = engine_System.main_loop();
    if(input->GetKeyDown(SDL_SCANCODE_W)){
      Object* obj =  engine_System.SpawnCircle({0, 0}, 10);
      obj->GetFixture()->GetBody()->ApplyLinearImpulseToCenter(b2Vec2((rand() % 10) - 100, 10), true);
      printf("pressed w\n");
    }
    
    
  input->Update();
  }

  printf("Finished!\n");
  return 0;
}