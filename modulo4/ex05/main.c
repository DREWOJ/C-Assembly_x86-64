#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int v = 1;
	int* v1 = &v;
	int v2 = 2;
	
	printf("v1 = %p v2 = %d square of v2 = %d", v1, v2, inc_and_square(v1,v2));
	
	return 0;
}
