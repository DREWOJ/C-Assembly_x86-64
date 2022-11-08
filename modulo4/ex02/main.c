#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int x = 3;
	
	printf("sum of %d  = %ld\n", x,sum_n2(x));
	
	return 0;
}
