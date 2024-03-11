#include <iostream>
#define SDL_MAIN_HANDLED

#include <SDL2/SDL.h>
#include <vector>
#include <chrono>

#include "core/spacial/Vector2D.h"
#include "core/Input.h"

#define WIDTH 800
#define HEIGHT 600

#define println(x) std::cout << x << std::endl



int main(int argc, char *argv[])
{

  Vector2D position = Vector2D(10, 100);

  SDL_Init(SDL_INIT_EVERYTHING);

  SDL_Window *window = SDL_CreateWindow("Hello SDL WORLD", 200, 200, WIDTH, HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  if (NULL == window)
  { 
    std::cout << "Could not create window: " << SDL_GetError() << std::endl;
    return 1;
  }

  SDL_Event windowEvent;
  std::vector<SDL_Vertex> verts = {
    SDL_Vertex{SDL_FPoint{100, 100}, SDL_Color{255, 0, 0, 255}, SDL_FPoint{0}},
    SDL_Vertex{SDL_FPoint{200, 100}, SDL_Color{255, 255, 0, 255}, SDL_FPoint{0}},
    SDL_Vertex{SDL_FPoint{600, 500}, SDL_Color{0, 0, 255, 255}, SDL_FPoint{0}},
    SDL_Vertex{SDL_FPoint{100, 200}, SDL_Color{0, 0, 255, 255}, SDL_FPoint{0}},

  };
  std::vector<int> indicies = {0, 1, 2, 1, 2, 3};
  // SDL_Point *points = {SDL_FPoint{500, 500}, SDL_FPoint{570, 700}};
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
    if (InputHandler->GetKey(SDL_SCANCODE_W)){

      verts[0].position.y -= 10;
    }
    if (InputHandler->GetKey(SDL_SCANCODE_D))
    {

      verts[0].position.x += 10;
    }
    if (InputHandler->GetKey(SDL_SCANCODE_S))
    {

      verts[0].position.y += 10;
    }
    if (InputHandler->GetKey(SDL_SCANCODE_A))
    {

      verts[0].position.x -= 10;
    }

    SDL_RenderClear(renderer);

    SDL_RenderGeometry(renderer, nullptr, verts.data(), verts.size(), indicies.data(), indicies.size());
    SDL_SetRenderDrawColor(renderer, 255, 255, 255, SDL_ALPHA_OPAQUE);

    SDL_RenderPresent(renderer);

    /*
    verts[0].position.x += 1;
       verts[1].position.x += 1;
        verts[1].position.y += 1;
        verts[2].position.x += 1;
        verts[2].position.y += 1;*/

    // SDL_SetWindowPosition(window, x, 200);
    //SDL_SetWindowSize(window, position.x, position.y);


    
    InputHandler->Update();
  }

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();

  return EXIT_SUCCESS;
}