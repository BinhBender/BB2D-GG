BB2D-GG (BinhBender 2-Dimensional - Game enGine)

This is a personal project that I will use to help teach me physics simulation, mesh (or just general shapes) collision, and rendering with triangles.

I came from the Unity Engine and so that is where most of the inspiration for how the names will be but I have never looked at their implementation so most of that is going to be coming from tutorial guides/youtube videos/ my own thoughts. 

If you want to run this program, you have to be on windows running an x86 processor and have the mingw32 GNU to be able to properly use the SDL library. The most sure-fire way to run is to compile the code for yourself so please try.

To compile - 

g++ -I src/include -L src/lib -o main main.cpp src/include/core/*.cpp -l mingw32 -l SDL2main -l SDL2 

To run -

./main.exe 

To compile & run -

g++ -Isrc/include -L src/lib -o main main.cpp src/include/core/*.cpp -lmingw32 -lSDL2main -lSDL2 && ./main.exe 


Plans:
  Collision:
    -General Mesh collision too hard, so I'm just going to be working from sphereical -> squares/rectangles -> general polygons.
      -Simple Circle Collision
      -Seperate  Axis Theorem (Convex shapes i.e. squares, rects, circles, triangles)
      
    -If performance is too low, I'm planning to integrate OpenCL to use the GPU's parallel processing powers

  Render:?
    (Probably just 2-D)




  
    
