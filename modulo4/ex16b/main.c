#include <stdio.h>
#include "asm.h"

int main (void) {

  int a = 10;
  int b = 5;
  int pos = 20;

	printf("%d\n", join_bits(a,b,pos));

return 0;
}
