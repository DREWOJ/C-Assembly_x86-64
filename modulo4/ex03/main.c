#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int a = 1;
	int b = 5;
	int c = -3;
	int d = 1;
	
	printf("greatest of %d, %d, %d, %d  = %d\n", a,b,c,d, greatest(a,b,c,d));
	
	return 0;
}
