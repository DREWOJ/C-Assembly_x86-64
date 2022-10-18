#include <stdio.h>
#include "asm.h"

int A = 0;
int B = 0;

int main() {

printf("Valor num1:");
scanf("%d",&A);
printf("Valor num2:");
scanf("%d",&B);

char result = isMultiple();

printf("%hd", result);

return 0;	
}
