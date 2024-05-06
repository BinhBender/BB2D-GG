#include "../src/include/core/Input.h"
#include <cstdio>

int main(){
  printf("Looking for w a s d q");

  bool running = true;
  Input* InputHandler = Input::GetInstance();
  while(running){
    if (InputHandler->GetKeyDown(SDL_SCANCODE_W)){
      printf("W pressed");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_W)){
      printf("W released");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_A)){
      printf("A pressed");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_A)){
      printf("A released");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_S)){
      printf("S pressed");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_S)){
      printf("S released");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_D)){
      printf("D pressed");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_D)){
      printf("D released");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_Q)){
      printf("Q pressed");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_Q)){
      printf("Q released");
    }
    InputHandler->Update();

  }
}