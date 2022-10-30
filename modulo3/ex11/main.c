#include <stdio.h>
#include "asm.h"

int vec[] = {10,11,12,3};
int* ptrvec = &vec[0];
int num = 4;

int main(void){
	
	printf("%d\n", vec_greater10());
	
return 0;	
}
