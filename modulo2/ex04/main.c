#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;
extern long op3;
extern long op4;

int main(void) {
printf("Valor op1:");
scanf("%d",&op1);
printf("Valor op2:");
scanf("%d",&op2);
printf("Valor op3:");
scanf("%ld",&op3);
printf("Valor op4:");
scanf("%ld",&op4);

long n = sum_v3();

printf("sum = %li:0x%lx\n", n,n);
return 0;
}
