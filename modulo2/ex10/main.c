#include <stdio.h>
#include "asm.h"

int op1;
int op2;
int op3;

int main() {

    printf("Valor op1:");
    scanf("%d",&op1);
    printf("Valor op2:");
    scanf("%d",&op2);
    printf("Valor op3:");
    scanf("%d",&op3);


    long n = sum3ints();
    
    printf("%ld\n", n);

    return 0;	
}
