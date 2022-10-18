#include <stdio.h>
#include "asm.h"

int main(void) {
	
    printf("Valor length1:");
    scanf("%d",&length1);
    printf("Valor length2:");
    scanf("%d",&length2);
    printf("Valor height:");
    scanf("%d",&height);


    printf("area = %d\n", getArea());
            
    return 0;	
}
