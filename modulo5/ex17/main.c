#include "function.h"
#include <stdio.h>
#include <stdlib.h>

int main(void) {

  structA** matrix; 

  matrix = (structA**) calloc(4,sizeof(structA*));

  for (int i = 0; i < 4; i++) {
    *(matrix+i) = (structA*) calloc(3,sizeof(structA));    
  }


  unionB uniB;
  uniB.b = 90;

  structA strA;
  strA.ub = uniB;
   

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 3; j++) {
      matrix[i][j] = strA;    
    }  
  }

  char b = return_unionB_b(matrix, 2, 2);
  
  printf("unionB_b = %d\n", b);

  free(matrix);
  return 0;
}


