#include <stdio.h>
#include "asm.h"

int main (void) {

	char x[] = {1,4,2,15,3,0};
	char *ptr = x[0];

	printf("%d\n", sum_multiples_x(ptr, 2));

return 0;
}
