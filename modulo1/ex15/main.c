#include <stdio.h>
#include "functions.h"

int main() {

int limit = 20;
int num = 100;
int vec[num];

extern int NUMBER_SETS;

int number=0;

populate(vec,num,limit);	

for (int i = 0; i<num - 2; i++) {
	number = check(*(vec + i),*(vec + i+1), *(vec + i+2));
	if(number == 1) inc_nsets();
}

for (int i = 0; i<num; i++) {
	printf("vec[%d] = %d\n",i, vec[i]);
}

printf("number = %d\n", NUMBER_SETS);

return 0;	
}
