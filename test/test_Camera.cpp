#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include <SDL2/SDL.h>
#include <random>
#include <vector>

void CreateObjects(std::vector<object>& arr){
  srand(time(0));
  for(int i = 0; i < 10; i ++){
    arr.push_back(new Sphere(
      rand()% 100, 
      Vector2D{
        float(rand() % WORLD_SPACE_LIMIT_X), 
        float(rand() % WORLD_SPACE_LIMIT_Y)
        }
      )
    );
    arr[i]->render = {
      rand() % 0xffffffff, 
      5
    };
    
    printf("x: %f y: %f\n", arr[i]->transform.Position.x, arr[i]->transform.Position.y);
  
    printf("Radius:%f\n", arr[i]->Radius);
  }
}
void DeleteObjects(std::vector<object>& arr){
  for(int i = 0; i < arr.size(); i ++){
    delete arr[i];  
  }
}

int main(int argv, char** args){
  
  SDL_Init(SDL_INIT_EVERYTHING);
  SDL_Window *window = SDL_CreateWindow("Camera Test", 200, 200, CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer* renderer = SDL_CreateRenderer(
    window, 
    -1, 
    SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC
  );

  Time* t = Time::GetInstance();
  Camera cam = Camera(window, renderer);
  std::vector<object> objectarr;
  CreateObjects(objectarr);
  cam.SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);
  
  int count = 0;
  int forcex = 3;
  double fps = 0;

  SDL_Event windowEvent;
  printf("Begin Render\n");
  bool running = true;
  int x = 0;
  int y = 0;
  
  while(running){
    //Check Events
    if (SDL_PollEvent(&windowEvent))
    {
      switch (windowEvent.type)
      {
        case SDL_QUIT:
          printf("Exit!\n");
          running = false;
          break;
      }
    }  
    for(int i = 1; i < objectarr.size(); i++){

      if(objectarr[i]->transform.Position.x > WORLD_SPACE_LIMIT_X || objectarr[i]->transform.Position.x < 0){
        forcex = -forcex;
      }
      objectarr[i]->transform.Position.x += forcex;
    }
    SDL_GetMouseState(&x, &y);
    objectarr[0]->transform.Position.x = x * float(WORLD_SPACE_LIMIT_X)/CAMERA_RESOLUTION_X;
    objectarr[0]->transform.Position.y = y * float(WORLD_SPACE_LIMIT_Y)/CAMERA_RESOLUTION_Y;
    t->start_time();
    cam.render(objectarr.data(), objectarr.size());
    t->end_time();
    fps += t->deltaTime;
    if(count > 240){
      count = 0;
      fps /= 240;
      printf("FPS: %4.2f | Time delta: %1.6f\n", 1/t->deltaTime, t->deltaTime);
      fps = 0;
    }else{
      count++;
    }

  }
  printf("End Render\n");
  DeleteObjects(objectarr);


  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();
  return 0;
}