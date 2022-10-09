#include <stdint.h>
#include "stddef.h"


void compress_shorts(short* shorts, int n_shorts, int* integers){
	for(int i = 0; i<n_shorts; i+=2){
		int32_t  i32 = (int32_t)( (uint32_t)shorts[i]<<16 | (uint32_t)shorts[i+1] );
		integers[i/2] = i32;
	}
}
