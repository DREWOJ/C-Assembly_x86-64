#include <stdio.h>
#include "asm.h"

int main (void) {

	int x = 0xff00ff00fff0f0ff;

	printf("%d\n", changes(&x));

return 0;
}
