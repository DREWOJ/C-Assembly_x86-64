#include "stddef.h"

void compress_shorts(short* shorts, int n_shorts, int* integers){
	for(int i = 0; i<n_shorts; i+=2){
		integers[i/2] = (shorts[i] << 16) + shorts[i+1];
	}
}
