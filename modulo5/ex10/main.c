#include <stdio.h>
#include "function.h"
#include <stdlib.h>

int main(void) {

  char *str = new_str("Hello world!");
  
  printf("Address: %p\n", str);
  // calloc() returns the pointer to the allocated memory block, or NULL in error
  printf("Content: %s\n", str);

  free(str);
  
  return 0;
}
