#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/engine_system.h"
#include <core/bmath.h>
#include <random>
#include <SDL2/SDL.h>

#define SCREEN_X 1280    
#define SCREEN_Y 720

int main(int argv, char** args){
  printf("SIZE OF b2Vec2: %i\n", sizeof(b2Vec2));
  int running = 1;

  Engine_System engine_System(SCREEN_X, SCREEN_Y);
  
  engine_System.init();
  Input* input = Input::GetInstance();
  Time* timeh = Time::GetInstance();
  SDL_Point mousePos;
  
  std::mt19937 mt(time(0));
  int radius = 0;
  float t = 0;
  Object* perp = engine_System.SpawnCircle({0,0}, 10);
  Object* controlled = engine_System.SpawnCircle({100, 100}, 5);
  Object* rectangle = engine_System.SpawnRectangle({-10, 300}, {20, 20});
  rectangle->GetFixture()->GetBody()->ApplyAngularImpulse(100 * rectangle->GetMass(), true);
  rectangle->raw = 0xffffffff;
  printf("%i\n", sizeof(Object));
  bool returning = false;
  while(running){

    
    t += timeh->deltaTime;
    perp->GetFixture()->GetBody()->SetLinearVelocity({SINRP(-100,100,t), 0});
    running = engine_System.main_loop();
    controlled->GetFixture()->GetBody()->SetLinearVelocity({
      50 * (input->GetKey(SDL_SCANCODE_D) - input->GetKey(SDL_SCANCODE_A)),
      50 * (input->GetKey(SDL_SCANCODE_W) - input->GetKey(SDL_SCANCODE_S))

      });

    if(input->GetKeyDown(SDL_SCANCODE_E)){
      radius++;
      srand(time(0));
      SDL_GetMouseState(&mousePos.x, &mousePos.y);
      printf("%i %i\n", mousePos.x, mousePos.y);
      Vector2D spawnpos = {0,0};
      spawnpos = engine_System.GetCamera()->ScreenSpaceToWorldSpace(Vector2D{mousePos.x, mousePos.y});

      //printf("x: %f,y: %f", engine_System.GetCamera()->position.x, engine_System.GetCamera()->position.y);
      Object* obj =  engine_System.SpawnCircle(spawnpos, 10);
      obj->raw = mt() % 0xffffffff;
      int mtrand = mt() % 100 - 50;
      printf("Mass: %f\n", obj->GetMass());
      b2Vec2 randforce{mtrand * obj->GetMass(), 100 * obj->GetMass()};
      printf("Force: %f, %f", randforce.x, randforce.y);
      obj->GetFixture()->GetBody()->ApplyLinearImpulseToCenter(randforce, true);
    }
    
    
  input->Update();
  }

  printf("Exiting Main!\n");
  return 0;
}