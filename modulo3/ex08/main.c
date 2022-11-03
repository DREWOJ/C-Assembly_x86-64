#include <stdio.h>
#include "asm.h"

long vec[] = {1,2,3,4,5};
long* ptrvec = &vec[0];
int num = 5;

int main(void) {

    long sum = vec_sum_even();

    printf("%ld", sum);
        
    return 0;	
}