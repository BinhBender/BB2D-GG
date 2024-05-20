#include "../src/include/core/Input.h"
#include <cstdio>

struct{
  int x;
  int y;
}typedef mousepos;

int main(int argv, char** args){

  SDL_Init(SDL_INIT_EVERYTHING);
  SDL_Window *window = SDL_CreateWindow("Camera Test", 200, 200, 1280, 780, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

  if (NULL == window)
  { 
    printf("Could not create window: %s", SDL_GetError()); 
    return 1;
  }

  printf("Looking for w a s d q");

  SDL_Event windowEvent;

  mousepos m;

  bool running = true;
  Input* InputHandler = Input::GetInstance();
  int i = 0;
  while(running){
        //Check Events
    if (SDL_PollEvent(&windowEvent))
    {
      switch (windowEvent.type)
      {
        case SDL_QUIT:
          printf("Exit!");
          running = false;
          break;
      }
    }
    SDL_GetMouseState(&m.x,&m.y);
    printf("NORMAL GET x: %u, y: %u\r", m.x, m.y);
    //SDL_GetRelativeMouseState(&m.x,&m.y);
    //printf("RELATIVE x: %u, y: %u\n", m.x, m.y);
    //system("clear");
    if (InputHandler->GetKeyDown(SDL_SCANCODE_W)){
      printf("W pressed\n");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_W)){
      printf("W released\n");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_A)){
      printf("A pressed\n");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_A)){
      printf("A released\n");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_S)){
      printf("S pressed\n");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_S)){
      printf("S released\n");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_D)){
      printf("D pressed\n");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_D)){
      printf("D released\n");
    }
    if (InputHandler->GetKeyDown(SDL_SCANCODE_Q)){
      printf("Q pressed\n");
    }
    if (InputHandler->GetKeyUp(SDL_SCANCODE_Q)){
      printf("Q released\n");
      //break;
    }
    InputHandler->Update();

  }

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();


  return 0;
}