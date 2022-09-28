#include <stdio.h>
#include "array_sort1.h"

int main() {
	
	int n = 4;
	int array[4] = {1,10,3,5};
	
	array_sort1(array,n);
	for (int i = 0; i<n; i++) {
		printf("%d ", array[i]);
	}
	
	return 0;
}
