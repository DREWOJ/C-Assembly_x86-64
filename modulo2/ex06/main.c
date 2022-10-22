#include <stdio.h>
#include "asm.h"

char byte1 = 0;
char byte2 = 0;

int main(void) {
	
printf("Valor char 1:");
scanf("%hhd",&byte1);

printf("Valor char 2:");
scanf("%hhd",&byte2);

short n2 = concatBytes();

printf("concatBytes = %hd\n", n2);
	
return 0;	
}
