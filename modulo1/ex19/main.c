#include <stdio.h>
#include "find_word.h"

int main(){
	char s[] = "The maximum value of this CYCLE";
	char word[] = "maximum";
	printf("%d\n", find_word(word, s));
}
