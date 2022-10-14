#include <stdio.h>
#include "asm.h"
int op1;
int op2;
int main(void) {

op1 = 0;
op2 = 1;

char c1 = test_flags();

printf("%d\n", c1);

op1 = 10;
op2 = 11;

char c2 = test_flags();

printf("%d\n", c2);

op1 = 9;
op2 = 0;

char c3 = test_flags();

printf("%d\n", c3);

op1 = 10;
op2 = -1;

char c4 = test_flags();

printf("%d\n", c4);

	return 0;	
}
