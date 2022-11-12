#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int num = 64;
	int nbits = 2;

	printf("left rotation of %d by %d is : %d\n", num, nbits, rotate_left(num,nbits));
	printf("right rotation of %d by %d is : %d\n", num, nbits, rotate_right(num,nbits));


return 0;
}
