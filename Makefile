all:
  g++ -I src/include -L src/lib -o main main.cpp src/include/core/*.cpp -l mingw32 -l SDL2main -l SDL2
	