void capitalize (char *str){
	while(*str != 0){
		if(*str == ' '){
			if(*(str+1) >= 97 && *(str+1) <= 122){ // checks lower case letter
				*(str+1) -= 32; // capitalizes
				str++;
			}
		}
		str++; //increments pointer
	}
}
