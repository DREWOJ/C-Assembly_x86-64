#include <stdio.h>
#include "asm.h"

char s[] = "aeeal";
char *ptr1 = &s[0];

int main(void) {
	
	int numberE = encrypt();
	printf("numberE = %d and encrypt = %s\n", numberE, ptr1);
	
	int numberD = decrypt();
	printf("numberD = %d and decrypt = %s\n", numberD, ptr1);
	
return 0;	
}
