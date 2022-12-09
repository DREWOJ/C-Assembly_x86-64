#include <stdlib.h>

int **add_matrixes(int **a, int **b, int y, int k) {

  int **matrix;
  matrix = (int**) calloc(y,sizeof(int*));

  for (int i = 0; i < y; i++) {
    matrix[i] = (int*) calloc(k,sizeof(int));
    for(int j = 0; j < k; j++){
      matrix[i][j] = a[i][j] + b[i][j];
    }
  }

  return matrix;
}
