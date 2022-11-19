#include <stdio.h>
#include "sum_multiples_x.h"

int main (void) {

	char x[] = {1,1,0};
	char *ptr = &x[0];

	printf("%d\n", sum_multiples_x(ptr, 256));

return 0;
}
