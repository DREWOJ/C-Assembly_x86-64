#include <stdio.h>
#include "copy_vec.h"

int main(void) {
	int n = 4;
	int v1[] = {1, 2, 3, 4};
	int v2[n];
	copy_vec(v1, v2, n);
	int i;
	for(i=0; i<n; i++){
		printf("%d", v2[i]);
	}
	return 0;
}
