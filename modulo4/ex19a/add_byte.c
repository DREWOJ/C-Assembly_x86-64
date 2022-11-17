void add_byte(char x, int *vec1, int *vec2) {

  int mask = 0x000000ff;
  int num = *vec1;

  *vec2 = *vec1;

	for(int i = 1; i <= num; i++) {
    int new_number = *(vec1+i) & ~mask;
	  *(vec2+i) = new_number | (((*(vec1+i) & mask) +  x) & mask);
  }
}
