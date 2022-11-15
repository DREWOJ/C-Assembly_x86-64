#include <stdio.h>
#include "asm.h"

int main(void) {

	int a = 0;
	int left = 24;
	int right = 7;

	printf("0x%x\n", activate_bits(a,left,right));




	return 0;
}
