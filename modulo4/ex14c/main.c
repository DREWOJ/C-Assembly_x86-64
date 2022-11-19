#include <stdio.h>
#include "asm.h"

int main (void) {

	int x = 0xffffffff;
  
  printf("%d\n",x);

  reset_2bits(&x,4);

  printf("%d\n", x);

return 0;
}
