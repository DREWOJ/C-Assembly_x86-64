#include <stdio.h>
#include "sort_without_reps.h"

int main() {
	
	int n = 4;
	int src[4] = {1,2,2,4};
	int dest[n];
	
	int number = sort_without_reps(src,n,dest);
	
	printf("number = %d\n",number);
	
	for (int i = 0; i<n; i++) {
		printf("dest[%d] = %d\n", i, dest[i]);
	}
	
return 0;	
}
