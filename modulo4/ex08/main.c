#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int a = 3;
  int b = 10;
  int c = 2;
	
	printf("cal  = %d\n", calc(a,&b,c));
	
	return 0;
}
