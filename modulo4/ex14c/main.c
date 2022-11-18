#include <stdio.h>
#include "asm.h"

int main (void) {

	int x = 2415;

	printf("%d\n", reset_2bits(&x, 4));

return 0;
}
