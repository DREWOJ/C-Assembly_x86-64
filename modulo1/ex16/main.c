#include <stdio.h>
#include "where_exists.h"

int main(){
	char s2[] = "The maximum value of this CYCLE";
	char s1[] = "maximum";
	printf("%d", *(where_exists(s1, s2)));
}
