To compile - 

g++ -I src/include -L src/lib -o main main.cpp src/include/core/*.cpp -l mingw32 -l SDL2main -l SDL2 

To run -

./main.exe 

To compile & run -

g++ -Isrc/include -L src/lib -o main main.cpp src/include/core/*.cpp -lmingw32 -lSDL2main -lSDL2 && ./main.exe 

Make sure you are on the SDL folder