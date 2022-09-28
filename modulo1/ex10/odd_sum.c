int odd_sum(int *p){
	int sum = 0;
	for(int i = 1; i < *p; i++){
		sum += *(p+i);
	}
	return sum;
}
