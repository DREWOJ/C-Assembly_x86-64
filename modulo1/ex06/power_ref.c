void power_ref(int* x, int y){
	int base = *x;
	for(int i = 1; i < y; i++){
		*x *= base;
	}
}
