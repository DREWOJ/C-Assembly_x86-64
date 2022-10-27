#include <stdio.h>
#include "asm.h"

long vec[] = {1,1,-1, 127};
long* ptrvec = &vec[0];
int num = 4;

int main(void){
	
	printf("%d\n", sum_first_byte());

return 0;	
}
