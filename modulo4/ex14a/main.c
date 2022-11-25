#include <stdio.h>
#include "reset_bit.h"

int main (void) {

	int pos = 5;
  int ptr = 10;

	printf("%d\n", reset_bit(&ptr, pos));

return 0;
}
