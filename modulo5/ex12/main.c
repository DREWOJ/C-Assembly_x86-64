#include <stdio.h>
#include <stdlib.h>
#include "function.h"

int main(void) {

  int **matrix = new_matrix(2,2);

  matrix[0][0] = 2;
  matrix[0][1] = 7;
  matrix[1][0] = 1;
  matrix[1][1] = 3;

  printf("%d\n",find_matrix(matrix, 2, 2, 1));

  free(matrix);

  return 0;
}
