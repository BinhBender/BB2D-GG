#pragma once

//#define DEBUG


#ifdef DEBUG
  #include <iostream>
  #define println(x) std::cout << x << std::endl

  
  #define Input_PRINT_KEYBOARDSTATE_START println("Getting Keyboard state pointer");
  #define Input_PRINT_KEYBOARDSTATE_END println("Keyboard state initialized");
  #define Input_PRINT_KEYBOARD_STATE_HISTORY_START println("Getting Keyboard history state pointer");
  #define Input_PRINT_KEYBOARD_STATE_HISTORY_END println("Keyboard state history initialized");
  #define Input_PRINT_NUMKEY println("Numkeys " << numkeys);
  #define Input_PRINT_INSTANCE_ADDRESS println(instance);
#else
  #define Input_PRINT_KEYBOARDSTATE_START
  #define Input_PRINT_KEYBOARDSTATE_END
  #define Input_PRINT_KEYBOARD_STATE_HISTORY_START
  #define Input_PRINT_KEYBOARD_STATE_HISTORY_END
  #define Input_PRINT_NUMKEY
  #define Input_PRINT_INSTANCE_ADDRESS
#endif

