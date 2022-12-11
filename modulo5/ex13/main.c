#include <stdio.h>
#include "function.h"
#include <stdlib.h>

int main(void) {

  
  int** matrix = new_matrix(5,5);
  
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      matrix[i][j] = i*j+1;
    }
  }

  int number = count_odd_matrix(matrix, 5, 5);
  
  printf("odd numbers in matrix = %d\n", number);
  

  free(matrix);
  return 0;
}
