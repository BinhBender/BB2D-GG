#include <core/Camera.h>
#include <core/Physics.h>
#include <core/Time.h>
#include <core/Input.h>
#include <core/Object.h>
#include <core/Vector2D.h>
#include <SDL2/SDL.h>
#include <random>
#include <vector>

#define SCREEN_X 1280
#define SCREEN_Y 720



void CreateObjects(std::vector<Object>& arr){
  srand(time(0));
  for(int i = 0; i < 15; i ++){
    Vector2D newPos = Vector2D{
      float(rand() % WORLD_SPACE_LIMIT_X - 100) + 100, 
      float(rand() % WORLD_SPACE_LIMIT_Y - 100) + 100
    };

    b2CircleShape circle;
    circle.m_radius = 20.0f;
    Object newobj(circle, newPos);
    arr.push_back(newobj);

    arr[i].SetColor(
      uint8_t(rand()%255),
      uint8_t(rand()%255),
      uint8_t(rand()%255),
      255
    );
    
    printf("x: %3.2f y: %3.2f\n", arr[i].GetPosition().x, arr[i].GetPosition().y);
  
    printf("Radius:%3.2f\n", arr[i].GetShape().m_radius);
  }
}
void SDL2Init(SDL_Renderer*& renderer, SDL_Window*& window){

  SDL_Init(SDL_INIT_EVERYTHING);

  window = SDL_CreateWindow(
    "Camera Test", 
    200, 200,   //Starting Position x,y
    SCREEN_X, SCREEN_Y, //Screen Size x,y
    SDL_WINDOW_ALLOW_HIGHDPI
    );

  renderer = SDL_CreateRenderer(
    window, 
    -1, 
    SDL_RENDERER_ACCELERATED 
  );
}
int main(int argv, char** args){

  SDL_Window* window;
  SDL_Renderer* renderer;
  SDL2Init(renderer, window);

  Time* t = Time::GetInstance();
  Input* input = Input::GetInstance();
  Camera cam = Camera(window, renderer);
  cam.SetScale(WORLD_SPACE_LIMIT_X, WORLD_SPACE_LIMIT_Y);


  std::vector<Object> objectarr;

  CreateObjects(objectarr);
  
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
    for(int i = 1; i < objectarr.size(); i++){

      if(objectarr[i].GetPosition().x > WORLD_SPACE_LIMIT_X || objectarr[i].GetPosition().x < 0){
        forcex = -forcex;
      }
      objectarr[i].ApplyForce(forcex);
    }
    
    //Silly circle on mouse
    SDL_GetMouseState(&x, &y);
    Vector2D mousePos = {x * float(WORLD_SPACE_LIMIT_X)/SCREEN_X, y * float(WORLD_SPACE_LIMIT_Y)/SCREEN_Y};
    objectarr[0].SetPosition(mousePos); 
    
    
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

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();
  return 0;
}