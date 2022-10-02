#include <stdio.h>
#include "swap.h"

int main() {

int size = 4;
	
int vec1[] = {1,2,3,4};
int vec2[] = {0,9,8,7};

swap(vec1,vec2,size);

for (int i = 0; i < size; i++)
{
	printf("vec1[%d] = %d\n",i,vec1[i]);
	printf("vec2[%d] = %d\n",i,vec2[i]);
}

return 0;	
}
