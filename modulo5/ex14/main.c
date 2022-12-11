#include <stdio.h>
#include "function.h"
#include <stdlib.h>


int main(void) {
  
  int **m1 = new_matrix(2,2);
  m1[0][0] = 2;
  m1[0][1] = 7;
  m1[1][0] = 1;
  m1[1][1] = 3;

  int **m2 = new_matrix(2,2);
  m2[0][0] = 2;
  m2[0][1] = 7;
  m2[1][0] = 1;
  m2[1][1] = 3;

  int **result = add_matrixes(m1, m2, 2, 2);

   for(int i=0; i<2; i++) {
      for(int j=0;j<2;j++) {
         printf("%d\n", result[i][j]);
      }
   }

   free(m1);
   free(m2);

  return 0;
}
