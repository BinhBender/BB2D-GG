#include "../src/include/core/Camera.h"
#include "../src/include/core/Physics.h"
#include "../src/include/core/Time.h"
#include "../src/include/core/Input.h"
#include "../src/include/core/Object.h"
#include <SDL2/SDL.h>
#include <random>
#include <vector>


#define SCREEN_X 1280
#define SCREEN_Y 720
void CreateObjects(std::vector<object>& arr){
  srand(time(0));
  for(int i = 0; i < arr.size(); i ++){
    arr[i] = {new Sphere(
      rand()% 100, 
      Vector2D{
        float(rand() % WORLD_SPACE_LIMIT_X - 100) + 100, 
        float(rand() % WORLD_SPACE_LIMIT_Y - 100) + 100
        }
    )};
    arr[i]->render.color.r = uint8_t(rand()%255);
    arr[i]->render.color.g = uint8_t(rand()%255);
    arr[i]->render.color.b = uint8_t(rand()%255);
    arr[i]->render.color.a = 255;

    
    printf("x: %3.2f y: %3.2f\n", arr[i]->transform.Position.x, arr[i]->transform.Position.y);
  
    printf("Radius:%3.2f\n", arr[i]->Radius);
  }
}
void DeleteObjects(std::vector<object>& arr){
  for(int i = 0; i < arr.size(); i ++){
    delete arr[i];  
  }
}

int main(int argv, char** args){
  
  SDL_Init(SDL_INIT_EVERYTHING);
  SDL_Window *window = SDL_CreateWindow("Camera Test", 200, 200, SCREEN_X, SCREEN_Y, SDL_WINDOW_RESIZABLE );
  SDL_Renderer* renderer = SDL_CreateRenderer(
    window, 
    -1, 
    SDL_RENDERER_ACCELERATED
  );

  Time* t = Time::GetInstance();
  Input* input = Input::GetInstance();
  Camera cam = Camera(window, renderer);
  cam.RESOLUTION_X = SCREEN_X;
  cam.RESOLUTION_Y = SCREEN_Y;
  std::vector<object> objectarr;
  objectarr.resize(15);
  CreateObjects(objectarr);
  cam.SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);
  
  int count = 0;
  int forcex = 1;
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
    if(input->GetKeyDown(SDL_SCANCODE_Q)){
      forcex -= 1;
    }
    if(input->GetKeyDown(SDL_SCANCODE_E)){
      forcex += 1;
    }
    if(input->GetKeyDown(SDL_SCANCODE_R)){
      
      CreateObjects(objectarr);
    }
    for(int i = 1; i < objectarr.size(); i++){

      if(objectarr[i]->transform.Position.x > WORLD_SPACE_LIMIT_X || objectarr[i]->transform.Position.x < 0){
        forcex = -forcex;
      }
      objectarr[i]->transform.Position.x += forcex;
    }
    
    //Silly circle on mouse
    SDL_GetMouseState(&x, &y);
    objectarr[14]->transform.Position.x = x * float(WORLD_SPACE_LIMIT_X)/float(SCREEN_X);
    objectarr[0]->transform.Position.y = y * float(WORLD_SPACE_LIMIT_Y)/float(SCREEN_Y);
    
    
    t->start_time();
    cam.render(objectarr.data(), objectarr.size());
    t->end_time();

    //Frame counting
    fps += t->deltaTime;
    if(count > 120){
      fps /= count;
      printf("FPS: %4.2f | Time delta: %1.6f\n", 1/fps, fps/count);
      count = 0;
      fps = 0;
      
    }else{
      count++;
    }

    input->Update();

  }
  printf("End Render\n");
  DeleteObjects(objectarr);

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();
  return 0;
}