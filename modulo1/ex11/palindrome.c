int is_valid(char c) {
		if (('A' <= c && c <= 'Z') || ('a' <= c && c <= 'z')) return 1;
	return 0;
}

int is_Capital_Letter(char c) {
	if (('A' <= c && c <= 'Z')) return 1;
	
return 0;
}

int palindrome(char *str) {
	
int validChar = 0 , totalChar = 0;
char tempC, tempC2;
int i = 0;

	while(str[totalChar] != 0){
		if (is_valid(str[totalChar]) == 1) {
			validChar++;
		}
		totalChar++;
		
	}
	
	if (validChar == 0) return 0;
	
	while (i < totalChar) {
		
		
		tempC = is_Capital_Letter(str[i]) ? str[i] : str[i] - 32;
		tempC2 = is_Capital_Letter(str[totalChar-1]) ? str[totalChar-1] : str[totalChar-1] - 32;
		
		if (!(tempC >= 'A' && tempC <= 'Z')) {
			i++;
		} else if (!(tempC2 >= 'A' && tempC2 <= 'Z')) {
			totalChar--;
		} else if (tempC == tempC2) {
			i++;
			totalChar--;
		} else {
			return 0;
		} 
	}
	
	return 1;
}
