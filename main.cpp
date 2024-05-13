#include <iostream>
#define SDL_MAIN_HANDLED

#include <SDL2/SDL.h>
#include <vector>
#include <chrono>

#include "core/time.h"
#include "core/Input.h"
#include "core/Vector2D.h"

#define WIDTH 800
#define HEIGHT 600

#define println(x) std::cout << x << std::endl



int main(int argc, char *argv[])
{

  Vector2D position = Vector2D{10, 100};

  SDL_Init(SDL_INIT_EVERYTHING);

  SDL_Window *window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, WIDTH, HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (NULL == window)
  { 
    std::cout << "Could not create window: " << SDL_GetError() << std::endl;
    return 1;
  }

  SDL_Event windowEvent;
  int mouse_x;
  int mouse_y; 
  SDL_GetMouseState(&mouse_x, &mouse_y);
  std::vector<int> indicies = {0, 1, 2, 1, 2, 3};
  bool running = true;
  Input* InputHandler = Input::GetInstance();
  println("balls");
  while (running)
  {
    //Check Events
    if (SDL_PollEvent(&windowEvent))
    {
      switch (windowEvent.type)
      {
        case SDL_QUIT:
          std::cout << "Exit!" << std::endl;
          running = false;
          break;
      }
    }
    std::cout << mouse_x << "          " << mouse_y << std::endl;
    SDL_RenderClear(renderer);
    //SDL_RenderGeometry(renderer, nullptr, verts.data(), verts.size(), indicies.data(), indicies.size());
    SDL_SetRenderDrawColor(renderer, 255, 255, 255, SDL_ALPHA_OPAQUE);

    SDL_RenderPresent(renderer);


    
    InputHandler->Update();
  }

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();

  return EXIT_SUCCESS;
}