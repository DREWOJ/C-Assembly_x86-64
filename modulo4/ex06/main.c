#include <stdio.h>
#include "asm.h"

int main(void) {
	
	char a[3] = "aaa";
  char b[3] = "aba";
	
	printf("strings equal  = %d\n",test_equal(a,b));
	
	return 0;
}
