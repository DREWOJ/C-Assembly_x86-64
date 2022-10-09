#include "stddef.h"
#include "upper1.h"

char* find_word(char* word, char* initial_addr){
	char *result = NULL;
	int i = 0;
	
	printf("word = %s\n", word);
	printf("string = %s\n\n", initial_addr);


	while(*initial_addr != '\0' && result == NULL){ 
		if(*word == *initial_addr){
			result = initial_addr;
			i = 1;

			while(*(word + i) != '\0' && result != NULL){
				
				if(*(word + i) != *(result + i)){
					result = NULL;
				}
				i++;
			}
		
		}
		initial_addr++;
	}

	return result;
}
