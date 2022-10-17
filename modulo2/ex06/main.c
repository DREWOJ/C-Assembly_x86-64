#include <stdio.h>
#include "asm.h"

char byte1 = 0;
char byte2 = 0;

int main(void) {
printf("Valor char 1:");
scanf("%hd",byte1);

printf("Valor char 1:");
scanf("%hd",byte2);

short n = concatBytes();

printf("%hd\n", n);
	
return 0;	
}
