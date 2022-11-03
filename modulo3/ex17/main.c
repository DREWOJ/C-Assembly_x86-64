#include <stdio.h>
#include "asm.h"

short vec[] = {1,6,3,4,5};
short* ptrvec = &vec[0];
int num = 5;

int main(void) {

    array_sort();

    for(int i = 0; i<5; i++){
        printf("%d", vec[i]);
    }
        
    return 0;	
}
