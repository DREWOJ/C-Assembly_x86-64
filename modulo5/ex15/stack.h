#ifndef FUNCTION_H
#define FUNCTION_H
  
  typedef struct {
    long *stack;
    int size;
  } stack;
 
  void push(stack* s, long value);
  long pop(stack* s);
#endif
