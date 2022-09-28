void upper1(char *str){
	while(*str != 0){
		if(*str >= 97 && *str <= 122) // checks if it is a lower case letter
			*str -= 32;
		str++; //increments pointer
	}
}
