#include <stdio.h>
#include "asm.h"

int vec[] = {1,2,3,4,5};
int* ptrvec = vec;
int num = 5;

int main(void) {

    vec_add_two();

    for(int i = 0; i<5; i++){
        printf("%d", vec[i]);
    }
        
    return 0;	
}