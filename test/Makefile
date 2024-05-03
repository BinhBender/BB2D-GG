all:
	g++ -I ../src/include -L ../src/lib -o test test.cpp -l mingw32 -l SDL2main -l SDL2
	g++ -I ../src/include -L ../src/lib -o test_PhysicsGrid test_PhysicsGrid.cpp ../src/include/core/Physics.cpp -l mingw32 -l SDL2main -l SDL2

grid:
	
	g++ -I ../src/include -L ../src/lib -o test \
	test_PhysicsGrid.cpp \
	../src/include/core/Physics.cpp \
	../src/include/core/Vector2D.cpp \
	../src/include/core/Object.cpp \
	../src/include/core/Bmath.cpp \
	../src/include/core/Transform.cpp \
	-l mingw32 -l SDL2main -l SDL2

time: 
	g++ -I ../src/include -L ../src/lib -o test test_Time.cpp ../src/include/core/Time.cpp -l mingw32 -l SDL2main -l SDL2
