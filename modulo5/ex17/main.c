#include "function.h"
#include <stdio.h>
#include <stddef.h>

int main(void) {

  int size = sizeof(structA);
  int sizeUB = offsetof(structA,ub);
  int sizeUBB = offsetof(unionB,d);
  int sizeU = sizeof(unionB);

  printf("%d\n", size);
  printf("%d\n", sizeUB);
  printf("%d\n", sizeUBB);
  printf("%d\n", sizeU);

  return 0;
}


