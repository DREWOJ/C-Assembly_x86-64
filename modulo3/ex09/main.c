#include <stdio.h>
#include "asm.h"

short vec[] = {1,0,1, 3, 2};
short *ptrvec = &vec[0];
int num = 5;
short x = 2;

int main(void) {
	
	printf("%p\n", vec_search());
	
	
return 0;
}
