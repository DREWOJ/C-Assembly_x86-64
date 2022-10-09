#include "stddef.h"
#include "stdio.h"

char* where_exists(char* str1, char* str2){
	char *result = NULL;
	int i = 0;

	//while the string isnt over and result is null (result null means string wasn't found yet)
	while(*str2 != '\0' && result == NULL){ 

		//if the char matches the first char of the string to find
		if(*str1 == *str2){
			result = str2;
			i = 1;

			//while string to find ins't over and result isnt null (result null means it is possible to find the string)
			while(*(str1 + i) != '\0' && result != NULL){

				// if the char doesnt match result turns to null which means the string wasn't found
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
