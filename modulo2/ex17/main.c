#include <stdio.h>
#include "asm.h"

int op1 = 10, op2 = 3;

int main(void) {
	
	int sum1 = sum();
	
	printf("sum = %d\n", sum1);
	
	int sub = subt();
	
	printf("sub = %d\n", sub);
	
	int mult = multiplication();
	
	printf("mult = %d\n", mult);
	
	int div = division();
	
	printf("div = %d\n", div);

	int modu = modulus();
	
	printf("modulus = %d\n", modu);
	
	int pow2 = power2();
	
	printf("power2 = %d\n", pow2);
	
	int pow3 = power3();
	
	printf("power3 = %d\n", pow3);
	

return 0;
}
