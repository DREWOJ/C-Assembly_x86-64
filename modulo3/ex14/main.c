#include <stdio.h>
#include "asm.h"

int vec[] = {1,2,3,2,5};
int* ptrvec = &vec[0];
int num = 5;
int x = 0;

int main(void) {

    int result = vec_diff();

    printf("%d\n", result);
        
    return 0;	
}