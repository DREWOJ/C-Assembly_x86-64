#include <stdio.h>
#include "asm.h"

int main (void) {

	char x[] = {3,5,11,12,7,4,0};
	char *ptr = x[0];

	printf("%d\n", sum_multiples_x(ptr, 0xf0301));

return 0;
}
