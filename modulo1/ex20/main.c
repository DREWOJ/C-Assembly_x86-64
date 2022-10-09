#include <stdio.h>
#include "find_all_words.h"

int main(){
	char s[] = "The maximum value of this CYCLE maximum";
	char word[] = "Maximum";
    char *addrs[2];
	find_all_words(s, word, addrs);
}
