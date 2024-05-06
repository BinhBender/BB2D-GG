#pragma once 
#include "../SDL2/SDL_keyboard.h"
#include <cstring>
#include "debug.h"
#include <SDL2/SDL.h>
//#define DEBUG


class Input{
private:
  static Input* instance;

  const Uint8 *KEYBOARDSTATE;
  Uint8 *KEYBOARD_STATE_HISTORY;
  int numkeys = 0;

  Input();

public:
  static void Update();
  static Input* GetInstance();


  static bool GetKeyDown(int);
  static bool GetKeyUp(int);
  static bool GetKey(int);

  ~Input();
};