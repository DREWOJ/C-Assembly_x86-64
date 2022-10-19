#include <stdio.h>
#include "asm.h"

int num = 4;

int main(void) {
	
    printf("Enter num:");
    scanf("%d",&num);
    


    printf("result = %hd\n", sum());
            
    return 0;	
}
