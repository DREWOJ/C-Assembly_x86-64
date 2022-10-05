#include <stdio.h>
#include "where_is.h"

int main() {
char str[] = "aaaaabcacc";
char c = 'c';
int n = 20;
int vec[n];

where_is(str,c,vec);

for (int i = 0; i<n; i++) {
	printf("vec = %d ", vec[i]);
}

return 0;
}
