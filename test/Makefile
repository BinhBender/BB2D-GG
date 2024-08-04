CXX = g++
CXXFLAGS = -I../src/include -L ../src/lib
LIBS = -l mingw32 -l box2d -l SDL2main -l SDL2 
DEST = -o test

PHYSICS  = ../src/include/core/Physics.cpp
VECTOR2D = ../src/include/core/Vector2D.cpp
OBJECT   = ../src/include/core/Object.cpp
BMATH    = ../src/include/core/Bmath.cpp
TIME     = ../src/include/core/Time.cpp
TRANSFORM= ../src/include/core/Transform.cpp
INPUT    = ../src/include/core/Input.cpp
CAMERA   = ../src/include/core/Camera.cpp
CONTACT	 = ../src/include/core/ContactListener.cpp
ALLFILES = ../src/include/core/*.cpp

phy:
	
	$(CXX) $(CXXFLAGS) $(DEST) \
	test_Physics.cpp \
	$(VECTOR2D) \
	$(PHYSICS) \
	$(OBJECT) \
	$(BMATH) \
	$(CONTACT) \
	$(LIBS) \


time: 
	$(CXX) $(CXXFLAGS) $(DEST) test_Time.cpp $(TIME) $(LIBS)

input:
	$(CXX) $(CXXFLAGS) $(DEST) test_input.cpp $(INPUT) $(LIBS)

cam:	
	$(CXX) $(CXXFLAGS) $(DEST) \
	test_Camera.cpp \
	$(CAMERA) \
	$(VECTOR2D) \
	$(OBJECT) \
	$(TRANSFORM) \
	$(BMATH) \
	$(TIME) \
	$(INPUT) \
	$(LIBS)

engine:
	$(CXX) $(CXXFLAGS) $(DEST) \
	test_enginesystem.cpp \
	../src/include/core/*.cpp \
	$(LIBS) 