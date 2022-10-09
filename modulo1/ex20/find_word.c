#include "stddef.h"
int not_equal(char a, char b){
	// checks if it is a lower case letter
	if(a >= 97 && a <= 122) a -= 32;
	if(b >= 97 && b <= 122) b -= 32;
	if(a == b) return 0;
	return 1;
}

char* find_word(char* word, char* initial_addr){
	char *result = NULL;
	int i = 0;

	while(*initial_addr != '\0' && result == NULL){ 
		if(*word == *initial_addr){
			result = initial_addr;
			i = 1;

			while(*(word + i) != '\0' && result != NULL){
				
				if(not_equal(*(word + i), *(result + i))){
					result = NULL;
				}
				i++;
			}
		
		}
		initial_addr++;
	}

	return result;
}
