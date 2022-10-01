#include <stdio.h>
#include "capitalize.h"

int main(){
	char s[] = "The maximum value of this CYCLE";
	capitalize(s);
	printf("%s", s);
	return 0;
}
