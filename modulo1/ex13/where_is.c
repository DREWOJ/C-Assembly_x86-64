#include <stdio.h>

int where_is(char *str, char c, int *p) {
int i = 0;
int count=0;

	while (*(str + i) != 0) {
		if (*(str + i) == c) {
			*(p + i) = i; 
			count++;
		}
		i++;
	}
	return count;
}
