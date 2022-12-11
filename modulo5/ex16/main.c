#include <stdio.h>
#include "function.h"
#include <stdlib.h>

int main(void) {
  
  group g1;

  g1.n_students=3;
  unsigned short *ptr;
  ptr = (unsigned short*) calloc(3,sizeof(unsigned short));
  ptr[0] = 3;
  ptr[1] = 2;
  ptr[2] = 0x0fff;

  g1.individual_grades = ptr;

  printf("Approved students: %d\n", approved_semester(&g1));

  free(ptr);

  return 0;
}
