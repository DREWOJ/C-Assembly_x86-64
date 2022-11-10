#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int a = 2;
	int b = 3;
	
	printf("calculate = %d\n", calculate(a,b));
	
	return 0;
}

void print_result(char op, int o1, int o2, int res)
{
printf("%d %c %d = %d\n", o1, op, o2, res);
}

