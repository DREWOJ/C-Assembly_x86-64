#include <stdio.h>
#include "asm.h"

short num = 3;
long vec[] = {-1,-1,-1};
long* ptrvec = vec;
long res_sum;

int main(void) {
	
	res_sum = vec_sum();
	
	printf("sum = %ld\n", res_sum);
	
	long avg = vec_avg();
	
	printf("avg = %ld\n", avg);
	
return 0;	
}
