#include <stdio.h>
#include "asm.h"

int main (void) {

	short x[] = {-1, -4, -2};
	short* ptr = x[0];

	printf("%d\n", vec_count_bits_one(ptr, 3));

return 0;
}
