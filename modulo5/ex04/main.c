#include <stdio.h>
#include "function.h"

int main (void) {

  Student s;

  fill_student(&s,20,100,"Pedro","Rua do Pedro");
  
  printf("age = %d\nnumber = %d\nname = %s\naddress = %s\n", s.age, s.number, s.name,s.address);

  update_address(&s, "Rua do oão");
  printf("new address = %s\n ", s.address);

  return 0;

}
