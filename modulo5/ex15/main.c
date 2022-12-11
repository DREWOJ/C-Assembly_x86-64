#include <stdio.h>
#include "stack.h"
#include <stdlib.h>

int main(void) {

  stack s;
  s.size = 0;
  s.stack = (long*) malloc(s.size*sizeof(long));
  
  
  printf("\ninitial stack size = %d\n\n", s.size);
  
  printf("push of number 100\n");
  push(&s,100);
  printf("stack size after 1 push = %d\n\n", s.size);
  
  printf("push of number 150\n");
  push(&s,150);
  printf("stack size after 2 push = %d\n\n", s.size);
  
  long value = pop(&s);
  printf("stack size after 1 pop = %d\n", s.size);
  printf("value pop = %ld\n\n", value);

  long value2 = pop(&s);
  printf("stack size after 2 pop = %d\n", s.size);
  printf("value pop = %ld\n\n", value2);
 
  free(s.stack);
  return 0; 
}
