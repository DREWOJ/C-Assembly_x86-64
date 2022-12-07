#include <stdio.h>
#include "function.h"


int main(void) {

  structA a;
  structB s;

  a.y = 10;
  a.x = 5;

  s.a = a;
  s.b = &a;
  s.x = 20;
  s.z = 1;
  s.c = 2;
  s.y = 3;
  s.e[0] = 1;
  s.e[1] = 2;
  s.e[2] = 3;
    
  short one = fun1(&s);
  short two = fun2(&s);
  short* pointer = fun3(&s);
  short four = fun4(&s);
  
  short three = *pointer;
  
  printf("fun1 = %d\n", one);
  printf("fun2 = %d\n", two);
  printf("fun3 = %d\n", three);
  printf("fun4 = %d\n", four);

  return 0;
}
