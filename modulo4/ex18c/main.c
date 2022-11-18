#include <stdio.h>
#include "asm.h"

int main (void) {

	int x[] = {0xff00ff00fff0f0ff, 0};
	int *ptr = x[0];

	printf("%d\n", changes_vec(ptr, 2));

return 0;
}
