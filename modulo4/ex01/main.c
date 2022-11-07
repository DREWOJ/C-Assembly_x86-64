#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int x = 3;
	
	printf("cube of %d  = %ld\n", x,cube(x));
	
	return 0;
}
