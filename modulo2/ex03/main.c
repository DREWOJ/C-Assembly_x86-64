#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void) {
printf("Valor op1:");
scanf("%d",&op1);
printf("Valor op2:");
scanf("%d",&op2);

int res = sum();

int n = sum_v2();

printf("res = %d:0x%x\n", res,res);
printf("sum = %d:0x%x\n", n,n);

return 0;
}
