#include <stdio.h>
#include "function.h"

int main(void) {

  int **matrix = new_matrix(5,5);

  printf("matrix address = %p\n", matrix);



  return 0;
}
