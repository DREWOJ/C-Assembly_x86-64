#include "function.h"
#include <stdio.h>

int main(void) {
  
  Student s;
  int new_grades[5] = {10,12,12,10,20};
  

  update_grades(&s,new_grades);

  for (int i = 0; i < 5; ++i) {
      printf("%d\n",s.grades[i]);
  }

  return 0;
}
