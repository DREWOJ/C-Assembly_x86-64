int odd_sum(int *p){
	int sum = 0;
	for(int i = 1; i <= *p; i++){ // for each element of the array checks if it is an odd number
		if(*(p+i) % 2 != 0) sum += *(p+i);
	}
	return sum;
}
