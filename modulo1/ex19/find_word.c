<<<<<<< HEAD
#include "stddef.h"

//compares char regardless of lower/capital cases
int not_equal(char a, char b){ 
=======
#include <stddef.h>

int not_equal(char a, char b){
>>>>>>> 552f21a6dba9d7704986aa63db96909349e93a37
	// checks if it is a lower case letter
	if(a >= 97 && a <= 122) a -= 32;
	if(b >= 97 && b <= 122) b -= 32;
	if(a == b) return 0;
	return 1;
}

//similar function to ex 16
char* find_word(char* word, char* initial_addr){
	char *result = NULL;
	int i = 0;

	//while the string isnt over and result is null (result null means word wasn't found yet)
	while(*initial_addr != '\0' && result == NULL){ 
<<<<<<< HEAD

		//if the char matches the first char of the word
		if(!not_equal(*word, *initial_addr)){
=======
		if(!not_equal(*word, *initial_addr)){ // checks if the first char of word and initial_addr are the same
>>>>>>> 552f21a6dba9d7704986aa63db96909349e93a37
			result = initial_addr;
			i = 1;
			//while word ins't over and result isnt null (result null means it is a possible word to find)
			while(*(word + i) != '\0' && result != NULL){
				
				// if the char doesnt match result turns to null which means word wasn't found
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
