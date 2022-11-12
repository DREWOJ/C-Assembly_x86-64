int rotate_left(int num, int nbits) {

	return (num << nbits)|(num >> (sizeof(int)*8 - nbits));
	
}
