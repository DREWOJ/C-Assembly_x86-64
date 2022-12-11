#include <stdlib.h>

int **new_matrix(int lines, int columns) {

  int **matrix;

  matrix = (int**) calloc(lines,sizeof(int*));

  for (int i = 0; i < lines; i++) {
    *(matrix+i) = (int*) calloc(columns,sizeof(int));    
  }

  return matrix;
}
