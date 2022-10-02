#include <stdio.h>
#include "power_ref.h"

int main(){
	int x = 2;
	power_ref(&x, 3);
	printf("%d=\n", x);
}
