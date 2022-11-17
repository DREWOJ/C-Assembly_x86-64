#include <stdio.h>
#include "asm.h"

int main(void) {
  
  char vec1[] = "aab";
  char* a = &vec1[0];

  char vec2[] = "baa";
  char* b = &vec2[0];
  

  printf("distance = %d\n", distance(a,b));


  return 0;
}


