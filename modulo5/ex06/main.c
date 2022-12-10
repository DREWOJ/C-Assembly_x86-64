#include "function.h"
#include <stdio.h>

int main(void) {
  
  Student s;
  int new_grades[5] = {10,12,12,10,20};
  

  update_grades(&s,new_grades);

  for (int i = 0; i < 5; ++i) {
      printf("grades[%d] = %d\n",i,s.grades[i]);
  }

  int ptr[5];

  int n_greater_grades = locate_greater(&s, 11, ptr);

  printf("Number of greater grades: %d\n",n_greater_grades);

  return 0;
}
