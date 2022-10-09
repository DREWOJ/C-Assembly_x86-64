#include <stddef.h>
#include <stdlib.h>
#include <time.h>

void populate (int *vec, int num, int limit) {
	srand(time(NULL));
	for (int i = 0; i<num; i++) {
		*(vec + i) = rand() % (limit);
	}
}
