#include <stdio.h>
#include "asm.h"

int main (void) {

	int x[] = {0xfff0f0ff, 0};
	int *ptr = &x[0];

  changes_vec(ptr,2);
  
  for (int i = 0; i < 2; ++i) {
    
    printf("%d\n", x[i] );

  }
return 0;
}
