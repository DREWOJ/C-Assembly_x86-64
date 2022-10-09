#include <stdio.h>
#include "find_word.h"

int main(){
	char s[] = "The maximum value of this CYCLE";
	char word[] = "Maximum";
	printf("%d", find_word(word, s));
}
