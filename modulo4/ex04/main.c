#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int num1 = 3;
  int num2 = 4;
  int smaller;
	
	printf("sum of %d and %d = %d\n", num1,num2,sum_smaller(num1,num2,&smaller));
	
	return 0;
}
