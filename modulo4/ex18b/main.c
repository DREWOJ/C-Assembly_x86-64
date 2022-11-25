#include <stdio.h>
#include "asm.h"

int main (void) {

	int x = 0xff0fffff;

	printf("%d\n", x);
  
  changes(&x);

  printf("%d\n",x);
return 0;
}
