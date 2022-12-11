#include <stdio.h>
#include "function.h"

int main(void) {

  s1 s;
  int vi = 1;
  char vc = 2;
  int vj = 3;
  char vd = 0;

  fill_s1(&s, vi, vc, vj, vd);

  printf("c = %d\ni = %d\nd = %d\nj = %d\n", s.c, s.i, s.d, s.j);

  return 0;   
}
