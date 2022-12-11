#include <stdlib.h>
#include "stack.h"

void push (stack* s, long value) {
  s->size++;

  s->stack = (long*)realloc(s->stack,s->size*sizeof(long));      
  
  *(s->stack + (s->size - 1)) = value;
}


long pop (stack* s) {

  s->size--;
  
  long value;
  
  value = *(s->stack + (s->size));

  s->stack = realloc(s->stack,s->size*sizeof(long));

  return value;
}



