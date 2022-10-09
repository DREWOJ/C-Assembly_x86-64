#include "stddef.h"

void compress_shorts(short* shorts, int n_shorts, int* integers){
	for(int i = 0; i<n_shorts; i+=2){
		int temp = shorts[i];
		integers[i/2] = (temp << 16) + shorts[i+1];
	}
}
