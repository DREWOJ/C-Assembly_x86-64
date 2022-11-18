#include <stdio.h>
#include "asm.h"

int main(void) {

	int vec1[] = {4,0,0,0};
  int vec2[4];

	char x = 1;

	add_byte(x,vec1,vec2);
	
	for (int i = 0; i < 4; i++) {
	  printf("vec2[%d] = %d\n", i,*(vec2 + i));
	}

	return 0;
}
