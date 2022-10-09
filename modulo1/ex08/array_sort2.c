void array_sort2(int *vec, int n){
	int temp; // helps to sort array

	for(int i = 0; i<n; i++){ // sorts array using pointer arithemic
		for(int j= 0; j<n; j++){
			if(*(vec+i) < *(vec+j)){
				temp = *(vec+i);
				*(vec+i) = *(vec+j);
				*(vec+j) = temp;
			}
		}
	}	
}
