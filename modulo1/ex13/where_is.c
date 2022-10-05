int where_is(char *str, char c, int *p) {
int i = 0;
int count = 0; // counts the times the char (c) appears on the string
		
	while (*(str + i) != 0) { // while the string doesn´t end, searches for the char (c) using pointer arithemic
		if (*(str + i) == c) {
			*(p + count) = i;
			count++;
		}
		i++;
	}
	
	return count;
}
