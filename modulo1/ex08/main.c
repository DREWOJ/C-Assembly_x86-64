#include <stdio.h>
#include "array_sort2.h"

int main(){
	int vec[] = {2, 4, 1, 0};
	array_sort2(vec, 4);
	for(int i = 0; i<4; i++){
		printf("%d", vec[i]);
	}
	return 0;
}
