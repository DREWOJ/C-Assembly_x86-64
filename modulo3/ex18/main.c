#include <stdio.h>
#include "asm.h"

short vec[] = {1,3,5,3,4,5};
short* ptrsrc = &vec[0];
short vec2[5];
short* ptrdest = &vec2[0];
int num = 6;

int main(void) {

    int result = sort_without_reps();

    for(int i = 0; i<result; i++){
        printf("%d", vec2[i]);
    }

    printf("\n%d",result);
        
    return 0;	
}
