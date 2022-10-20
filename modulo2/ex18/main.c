#include <stdio.h>
#include "asm.h"

int num = 0;

int main(void) {
	
    printf("Enter num:");
    scanf("%d",&num);
    


    printf("result = %hd\n", sum());
    int result = 0;
    
/*
    for(int i = 1; i<=num; i++){
        result +=( i*i * 4*4 / 5);
    }
    printf("actual result = %hd\n", result);
*/
            
    return 0;	
}
