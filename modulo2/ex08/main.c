#include <stdio.h>
#include "asm.h"

extern short s1;
extern short s2;

int main() {
	
short n = crossSumBytes();

printf("%hd\n", n);

return 0;	
}
