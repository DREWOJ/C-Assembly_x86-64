#include <stdio.h>
#include "asm.h"

int main(void) {
	
	char v[] = {1,1,2};
	char* vec = &v[0];
	int n = 3;
	
	printf("odd numbers = %d\n", count_odd(vec,n));
	
	return 0;
}
