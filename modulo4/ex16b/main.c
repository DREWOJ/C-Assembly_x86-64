#include <stdio.h>
#include "asm.h"

int main (void) {

	int x = 2415;

	printf("%d\n", join_bits(&x, 4));

return 0;
}
