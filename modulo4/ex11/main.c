#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int a = 2;
	int b = 3;
	short c = 1;
	char d = 0;

	printf("x1 = %d\n",a);
	printf("x2 = %d\n",b);
	printf("x3 = %d\n",c);
	printf("x4 = %d\n",d);
	printf("(x1+x2)*(x3-x4) = %d\n", call_proc(a,b,c,d));
	
	return 0;
}

