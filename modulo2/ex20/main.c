#include <stdio.h>
#include "asm.h"

int num = 0;

int main(void) {
	
    printf("Enter num:");
    scanf("%d",&num);
    


    printf("check_num = %hd\n", check_num());
            
    return 0;	
}
