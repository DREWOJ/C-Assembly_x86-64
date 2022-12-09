#include <stdio.h>
#include "function.h"

int main(void) {

  s2 s;
  char vc[] = "123";
  short vw = {1, 2, 3};
  int vj = 1;

  fill_s2(&s, vw, vj, vc);

  return 0;   
}
