#include <stdio.h>
#include "asm.h"

int main (void) {

	int a = 0;
	int left = 7;
	int right = 31;

	printf("%d\n", activate_bits(a,left,right));


return 0;
}
