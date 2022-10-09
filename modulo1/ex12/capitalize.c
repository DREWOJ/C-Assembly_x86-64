void capitalize (char *str){
	
	if(*str >= 97 && *str <=122) { // check the first letter of the string
		*str -=32;
	}
	
	while(*str != 0){
		if(*str == ' '){
			if(*(str + 1) >= 97 && *(str + 1) <= 122){ // checks lower case letter
				*(str + 1) -= 32; // capitalizes
				str++;
			}
		}
		str++; //increments pointer
	}
}
