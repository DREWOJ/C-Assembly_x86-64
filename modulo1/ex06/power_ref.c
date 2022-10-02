void power_ref(int* x, int y){
		
	int base = *x;
	
	if (y == 0) *x = 1; // in case the exponent is zero
	
	if (y > 1) {
		for(int i = 1; i < y; i++){ // in case the exponent is positive
			*x *= base;
		}
	} else {
		for (int j = -1; j>y;j--) { // in case the exponent is negative
			*x *= 1/(base);			
			}
	}
}
