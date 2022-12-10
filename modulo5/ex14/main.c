#include <stdio.h>
#include "function.h"

int main(void) {
  
  int **m1 = new_matrix(5,5);
  m1[0] = {4,2,5,1,7};
  m1[1] = {5,2,6,1,7};
  m1[2] = {8,6,4,4,8};
  m1[3] = {6,3,1,7,3};
  m1[4] = {1,4,6,2,7};

  int **m2 = new_matrix(5,5);
  m2[0] = {4,2,5,1,7};
  m2[1] = {5,2,6,1,7};
  m2[2] = {8,6,4,4,8};
  m2[3] = {6,3,1,7,3};
  m2[4] = {1,4,6,2,7};

  int **result;

  result = add_matrixes(m1, m2, 5, 5);

  return 0;
}
