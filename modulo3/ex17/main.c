#include <stdio.h>
#include "asm.h"

int vec[] = {1,2,3,4,5};
int* ptrvec = &vec[0];
int num = 5;

int main(void) {

    array_sort();

    for(int i = 0; i<5; i++){
        printf("%d", vec[i]);
    }
        
    return 0;	
}
