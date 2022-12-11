#include <stdio.h>
#include "function.h"

int main(void) {

  s2 s;
  char vc[] = "abc";
  short vw[] = {1, 2, 3};
  int vj = 18;

  fill_s2(&s, vw, vj, vc);
  printf("c[0] = %c\n", s.c[0]);
  printf("c[1] = %c\n", s.c[1]);
  printf("c[2] = %c\n", s.c[2]);;
  printf("w[0] = %d\n", s.w[0]);
  printf("w[1] = %d\n", s.w[1]);
  printf("w[2] = %d\n", s.w[2]);
  printf("j = %d\n", s.j);
  
  return 0;   
}
