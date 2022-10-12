#include <stdio.h>
#include "asm.h"

short s = 0;

int main(void) {
printf("Valor op1:");
scanf("%hd",&s);

printf("%hd\n", s);

short n = swapBytes();

printf("%hd\n", n);
	
return 0;	
}
