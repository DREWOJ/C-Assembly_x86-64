#include <stdio.h>
#include "where_is.h"

int main() {
char str[] = "aaaaabcacc";
char c = 'c';
int vec[20];

int number = where_is(str,c,vec);

for (int i = 0; i<11; i++) {
	printf("vec = %d ", vec[i]);
}

return 0;
}
