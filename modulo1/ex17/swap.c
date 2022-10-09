void swap(int* vec1, int* vec2, int size) {

int temp = *vec1; // stores the first number of the array in the variable temp

	for (int i = 0; i < size; i++) { // swaps the content of the vec1 into vec2
		temp = *(vec1+i);
		*(vec1+i)=*(vec2+i);
		*(vec2+i)=temp;

	}	

}
