#include "Input.h"

Input* Input::instance = nullptr;
Input::Input(){
  Input_PRINT_KEYBOARDSTATE_START
  //We hold the pointer that contains the key presses
  KEYBOARDSTATE = SDL_GetKeyboardState(&numkeys);
  Input_PRINT_KEYBOARDSTATE_END
  Input_PRINT_NUMKEY
  // This secondary array will be used to keep track if key has been released or pressed or held.
  Input_PRINT_KEYBOARD_STATE_HISTORY_START
  KEYBOARD_STATE_HISTORY = new Uint8[numkeys];
  Input_PRINT_KEYBOARD_STATE_HISTORY_END
}

// Deallocates the KEYBOARD_STATE_HISTORY
Input::~Input(){
  if (KEYBOARD_STATE_HISTORY != nullptr){
    delete[] KEYBOARD_STATE_HISTORY;

  }
  if(instance != nullptr)
    delete instance;
}

/// @brief COPYING the array so that we can cross reference it with a future keyboard state
void Input::Update()
{
  //We have to call this function every frame.
  std::memcpy(instance->KEYBOARD_STATE_HISTORY, instance->KEYBOARDSTATE, instance->numkeys);
}

/// @brief Returns a pointer to the singleton input handler and will create one if one does not exit
/// @return Pointer of the input handler
Input* Input::GetInstance()
{
  if(instance!=NULL){
    return instance;
  }else{
    instance = new Input();
    Input_PRINT_INSTANCE_ADDRESS
    return instance;
  }
}

/// @brief Returns true or false based on if its been pressed or not
/// @param key to check if it was just pressed
bool Input::GetKeyDown(int key)
{
  return instance->KEYBOARDSTATE[key] && !instance->KEYBOARD_STATE_HISTORY[key];
}
/// @brief Returns true or false based on if it had been released or not
/// @param key Key to check if it was released
bool Input::GetKeyUp(int key)
{
  return instance->KEYBOARD_STATE_HISTORY[key] && !instance->KEYBOARDSTATE[key];
}
/// @brief Returns true or false based on if its being pressed or not
/// @param key Key to check if its currently being pressed
bool Input::GetKey(int key)
{
  return instance->KEYBOARDSTATE[key];
}