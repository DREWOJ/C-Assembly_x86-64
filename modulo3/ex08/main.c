#include <stdio.h>
#include "asm.h"

int vec[] = {1,2,3,4,5};
int* ptrvec = vec;
int num = 5;

int main(void) {

    long sum = vec_sum_even();

    printf("%hd", sum);
        
    return 0;	
}