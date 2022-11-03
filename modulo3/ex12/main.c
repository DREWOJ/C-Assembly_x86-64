#include <stdio.h>
#include "asm.h"

int vec[] = {1,200,3,400,5};
int* ptrvec = vec;
int num = 5;

int main(void) {

    unsigned char result = vec_zero();

    for(int i = 0; i<5; i++){
        printf("%d", vec[i]);
    }

    printf("\n%d", result);
        
    return 0;	
}