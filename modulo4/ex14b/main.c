#include <stdio.h>
#include "asm.h"

int main (void) {

	int x = 2415;

	printf("%d\n", reset_bit(&x, 4));

return 0;
}
