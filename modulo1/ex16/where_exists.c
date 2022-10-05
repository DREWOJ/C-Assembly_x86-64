#include "stddef.h"
#include "stdio.h"

char* where_exists(char* str1, char* str2){
	char *result = NULL;
	int i = 0;

	while(*str2 != '\0' && result == NULL){ 
		if(*str1 == *str2){
			result = str2;
			i = 1;

			while(*(str1 + i) != '\0' && result != NULL){
				
				if(*(str1 + i) != *(result + i)){
					result = NULL;
				}
				i++;
			}
		
		}
		str2++;
	}

	return result;
}
