INC_PATH=-Isrc/include
LIB_PATH=-Lsrc/lib

CC=g++



build:
	$(CC) $(INC_PATH) $(LIB_PATH) -o main main.cpp src/include/core/*.cpp -l mingw32 -l SDL2main -l SDL2

compile:
	$(CC) $(INC_PATH) $(LIB_PATH) -o main main.cpp obj/*.o -l mingw32 -l SDL2main -l SDL2

object:
	$(CC) $(INC_PATH) $(LIB_PATH) -c src/include/core/*.cpp -l mingw32 -lSDL2main -lSDL2
	


clean: 
	rm *.o