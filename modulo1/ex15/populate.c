#include <stddef.h>
#include <stdlib.h>
#include <time.h>

void populate (int *vec, int num, int limit) {
	
	srand(time(NULL)); // generate different seed each time this function is called to get different numbers each time
	
	for (int i = 0; i<num; i++) {
		*(vec + i) = rand() % (limit); // generates random numbers and place them inside the array vec
	}
}
