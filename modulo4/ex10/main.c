#include <stdio.h>
#include "asm.h"

int main(void) {
	
	short w = 3;
	
	printf("%d\n", call_incr(w));
	
	return 0;
}
