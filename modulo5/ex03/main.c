#include <stdio.h>
#include "function.h"

int main (void) {

  Student s;

  fill_student(&s,20,100,"Pedro","Rua do Pedro");
  
  printf("age = %d\n number= %d\n name = %s\n address = %s\n", s.age, s.number, s.name,s.address); 
return 0;
}




