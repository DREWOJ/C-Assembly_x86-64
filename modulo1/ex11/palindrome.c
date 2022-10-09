int is_valid(char c) { // validates if the char is valid
		if (('A' <= c && c <= 'Z') || ('a' <= c && c <= 'z')) return 1;
	return 0;
}

int is_Capital_Letter(char c) { // checks if the char is an capital letter or not
	if (('A' <= c && c <= 'Z')) return 1;
	
return 0;
}

int palindrome(char *str) {
	
int validChar = 0 , totalChar = 0;
char tempC, tempC2; // chars to help search if the 'string' is palindrome or not
int i = 0;

	while(str[totalChar] != 0){
		if (is_valid(str[totalChar]) == 1) {
			validChar++;
		}
		totalChar++;
		
	}
	
	if (validChar == 0) return 0;
	
	while (i < totalChar) { /* checks from if a 'string' is palindrome or not 
							compares the chars from the start and from the finish until they traveled all the chars available */
		
		tempC = is_Capital_Letter(str[i]) ? str[i] : str[i] - 32; 
		tempC2 = is_Capital_Letter(str[totalChar-1]) ? str[totalChar-1] : str[totalChar-1] - 32;
		
		if (!(tempC >= 'A' && tempC <= 'Z')) { // if the char is not a letter advances to the next position
			i++; 
		} else if (!(tempC2 >= 'A' && tempC2 <= 'Z')) { // if the char is not a letter advances to the next position
			totalChar--;
		} else if (tempC == tempC2) { // checks if the two chars are the same
			i++;
			totalChar--;
		} else {
			return 0; // if the chars don't match returns false (0) 
		} 
	}
	
	return 1;
}
