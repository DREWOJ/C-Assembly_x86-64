void copy_vec(int *vec1, int *vec2, int n){
	int i;
	for(i = 0; i < n; i++){
		*vec2 = *vec1; //copies element
		vec1++; //increments pointer positon
		vec2++; //increments pointer positon
	}
}
