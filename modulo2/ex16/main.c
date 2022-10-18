#include <stdio.h>
#include "asm.h"

long num = 0;

int main(void) {
	
    printf("Enter num:");
    scanf("%hd",&num);
    


    printf("result = %hd\n", steps());
            
    return 0;	
}
