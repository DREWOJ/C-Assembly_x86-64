#include <stdio.h>
#include "asm.h"

int op1;
int op2;
int op3;

int main() {

    printf("Valor op1:");
    scanf("%hd",op1);
    printf("Valor op2:");
    scanf("%hd",op2);
    printf("Valor op3:");
    scanf("%hd",op3);


    long n = sum3ints();

    return 0;	
}
