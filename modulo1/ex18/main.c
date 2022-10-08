#include <stdio.h>
#include "compress_shorts.h"

int main(){
	short s[] = {1,1};
	int n = 1;
	int i[n];
	compress_shorts(s, n, i);

	for(int j = 0; j<n; j++){
		printf("%d", i[j]);
	}
}
