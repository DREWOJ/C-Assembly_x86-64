#include <stdio.h>
#include "asm.h"

int vec[] = {1,3,1,3,2,5};
int* ptrvec = &vec[0];
int num = 6;

int main(void) {

    int result = count_max();

    printf("%d\n",result);
        
    return 0;	
}
