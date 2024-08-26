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

#define AMOUNT 45
typedef struct {
  Vector2D pos;
  float rad;
  SDL_Color rgba;
}CircleTest;

typedef struct{
  Vector2D pos;
  Vector2D wh;
  SDL_Color rgba;
}RectTest;

typedef struct{
  Vector2D pos;
  SDL_Vertex vertices[6];
  SDL_Color rgba{0xff, 0xff, 0xff, 0xff};

}PolyTest;

void CreatePolyTestRand(std::vector<PolyTest>& arr){
  srand(time(0));
  arr.clear();
  arr.resize(AMOUNT);
  for(int i = 0; i < AMOUNT; i ++){
    Vector2D newPos = {rand()% SCREEN_X, rand() % SCREEN_Y};
    
    arr[i].pos = newPos;

    arr[i].vertices[0].position = Vector2D{newPos + Vector2D{-1,1}* (200)}; 
    arr[i].vertices[1].position = Vector2D{newPos + Vector2D{1,1}* (200)}; 
    arr[i].vertices[2].position = Vector2D{newPos + Vector2D{1.5f,0}* (200)}; 

    arr[i].vertices[3].position = Vector2D{newPos + Vector2D{1,-1}* (200)}; 
    arr[i].vertices[4].position = Vector2D{newPos + Vector2D{-1,-1}* (200)}; 
    arr[i].vertices[5].position = Vector2D{newPos + Vector2D{-1.5f,0}* (200)}; 

    arr[i].vertices[0].color = SDL_Color{rand()%255, rand()%255, rand()%255, rand()%255};
    arr[i].vertices[1].color = SDL_Color{rand()%255, rand()%255, rand()%255, rand()%255};
    arr[i].vertices[2].color = SDL_Color{rand()%255, rand()%255, rand()%255, rand()%255};
    arr[i].vertices[3].color = SDL_Color{rand()%255, rand()%255, rand()%255, rand()%255};
    arr[i].vertices[4].color = SDL_Color{rand()%255, rand()%255, rand()%255, rand()%255};
    arr[i].vertices[5].color = SDL_Color{rand()%255, rand()%255, rand()%255, rand()%255};
    printf("Poly x: %3.2f y: %3.2f\n", arr[i].pos.x, arr[i].pos.y);
  
  }
}

void CreateRectTest(std::vector<RectTest>& arr){
  srand(time(0));
  arr.clear();
  for(int i = 0; i < AMOUNT; i ++){
    Vector2D newPos{
      -i * 20, 
      -i * 20
    };
    Vector2D wh = {10 + (i * 10), 10 + (i * 10)};

    arr.push_back({newPos,wh,{rand()% 255, rand()%255, rand()%255,rand()%255}});
    
    printf("x: %3.2f y: %3.2f\n", arr[i].pos.x, arr[i].pos.y);
  
    printf("W:%3.2f | H:%3.2f\n", arr[i].wh.x, arr[i].wh.y);
  }
}

void CreateRectTestRand(std::vector<RectTest>& arr){
  srand(time(0));
  arr.clear();
  for(int i = 0; i < AMOUNT; i ++){
    Vector2D newPos{
      rand()% SCREEN_X - SCREEN_X/2, 
      rand()% SCREEN_Y - SCREEN_Y/2
    };
    Vector2D wh = {rand()% 150, rand() % 50};

    arr.push_back({newPos,wh,{rand()% 255, rand()%255, rand()%255,rand()%255}});
    
    printf("x: %3.2f y: %3.2f\n", arr[i].pos.x, arr[i].pos.y);
  
    printf("W:%3.2f | H:%3.2f\n", arr[i].wh.x, arr[i].wh.y);
  }
}

void CreateCirclesRand(std::vector<CircleTest>& arr){
  srand(time(0));
  arr.clear();
  for(int i = 0; i < AMOUNT; i ++){
    Vector2D newPos{
      rand()% SCREEN_X - SCREEN_X/2, 
      rand()% SCREEN_Y - SCREEN_Y/2
    };
    float r = rand()% 30;

    arr.push_back({newPos,r,{rand()% 255, rand()%255, rand()%255,rand()%255}});
    
    printf("x: %3.2f y: %3.2f\n", arr[i].pos.x, arr[i].pos.y);
  
    printf("Radius:%3.2f\n", arr[i].rad);
  }
}
void CreateCircles(std::vector<CircleTest>& arr){
  srand(time(0));
  arr.clear();
  for(int i = 0; i < AMOUNT; i ++){
    Vector2D newPos{
      i * 50, 
      i * 50
    };
    float r = 20 + (20 * i);

    arr.push_back({newPos,r,{rand()% 255, rand()%255, rand()%255,rand()%255}});
    
    printf("x: %3.2f y: %3.2f\n", arr[i].pos.x, arr[i].pos.y);
  
    printf("Radius:%3.2f\n", arr[i].rad);
  }
}

void SDL2Init(SDL_Renderer*& renderer, SDL_Window*& window){

  SDL_Init(SDL_INIT_EVERYTHING);

  window = SDL_CreateWindow(
    "Camera Test", 
    SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,   //Starting Position x,y
    SCREEN_X, SCREEN_Y, //Screen Size x,y
    SDL_WINDOW_ALLOW_HIGHDPI 
  );
  SDL_SetWindowMaximumSize(window, 1920, 1080);
  SDL_SetWindowMinimumSize(window, 1280, 720);
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

//Camera
  Camera cam = Camera(window, renderer);
  cam.SetScale(1);

//Utilites
  Time* t = Time::GetInstance();
  Input* input = Input::GetInstance();

  std::vector<CircleTest> CircleArr;
  std::vector<RectTest> RectArr;
  std::vector<PolyTest> PolyArr;

//Populates the array
  CreateCirclesRand(CircleArr);
  CreateRectTestRand(RectArr);
  CreatePolyTestRand(PolyArr);
//Keeps track of speed
  int count = 0;
  double fps = 0;

  SDL_Event windowEvent;
  printf("Begin Render\n");
  bool running = true;
  //For mouse input
  int x = 0;
  int y = 0;
  
  float scale = 1;
  bool jimmys = true;
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
      
      CreateCirclesRand(CircleArr);
      CreateRectTestRand(RectArr);
    }
    if(input->GetKeyDown(SDL_SCANCODE_E)){
      
      CreateCircles(CircleArr);
      CreateRectTest(RectArr);
    }
    if(input->GetKeyDown(SDL_SCANCODE_ESCAPE)) running = false;
    
    if(input->GetKey(SDL_SCANCODE_R)){
      scale *= 1.0f - (0.1f * 50 * t->deltaTime);
    }
    
    if(input->GetKey(SDL_SCANCODE_F)){
      scale *= 1.0f +  (0.1f * 50 * t->deltaTime);
    }
    if(input->GetKeyDown(SDL_SCANCODE_F11)){
      jimmys ? SDL_MaximizeWindow(window) : SDL_MinimizeWindow(window);
      cam.GetResolution();
      jimmys = -jimmys;
    }
    cam.SetScale(scale);
    
    cam.position += Vector2D{input->GetKey(SDL_SCANCODE_A) - input->GetKey(SDL_SCANCODE_D),input->GetKey(SDL_SCANCODE_W) - input->GetKey(SDL_SCANCODE_S)} * 100 * t->deltaTime / scale;
    //Silly circle on mouse
    SDL_GetMouseState(&x, &y);
    Vector2D mousePos = {x, y};
    //CircleArr[AMOUNT-1].pos = cam.ScreenSpaceToWorldSpace(mousePos);
//Render start
    t->start_time();
    SDL_SetRenderDrawColor(renderer, 0X00, 0X00, 0X00, 0XFF);
    SDL_RenderClear(renderer);
    for(auto& r : RectArr){
      
      cam.DrawRectangle(r.pos, r.wh, r.rgba);
    }
    //Draw Circles
    for(int i = 0; i < CircleArr.size(); i++){
      
      cam.DrawCircleFilled(CircleArr[i].pos, CircleArr[i].rad, CircleArr[i].rgba, 0);

    }
    for(auto& p : PolyArr){
      //cam.DrawPolygon(p.vertices, 6, p.rgba);
    }
    SDL_Color color{0xff, 0xff, 0xff, SDL_ALPHA_OPAQUE};
    SDL_Color color2{0x11, 0x11, 0x11, 100}; 
    //Center Circle
    cam.DrawCircleFilled(cam.GetCenter(), 10/scale,color, 0);

    //Midline 
    Vector2D p1 = {0, SCREEN_Y/2};
    Vector2D p2 = {0, -SCREEN_Y/2};
    cam.DrawEdge(p1 ,p2, color);
    for(int i = -100; i < 100; i++){
      
      cam.DrawEdge(p1 + Vector2D{10 + (10 * i), 0}, p2 + Vector2D{10 + (10 * i), 0}, color2);
    }
    p1 = {-SCREEN_X/2, 0};
    p2 = {SCREEN_X/2, 0};
    cam.DrawEdge(p1 ,p2, color );
    for(int i = -100; i < 100; i++){
      
      cam.DrawEdge(p1 + Vector2D{0, 10 + (10 * i)}, p2 + Vector2D{0, 10 + (10 * i)}, color2);
    }


    SDL_RenderPresent(renderer);
    t->end_time();
//Render end
    //Frame counting
    fps += t->deltaTime;
    if(fps > 1){                                                                                                                                                                          
      fps /= count;
      printf("FPS: %4.2f | Time delta: %1.8f\n", 1/fps, fps/count);
    printf("%f, %f\n", cam.GetCenter().x, cam.GetCenter().y);
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