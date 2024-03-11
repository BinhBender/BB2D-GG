

EXECUTABLE = game.exe
SRC = main.cpp
 
$(EXECUTABLE): $(SRC)
	g++ -Isrc/include -L src/lib -o $@ $^ -lmingw32 -lSDL2main -lSDL2 
	