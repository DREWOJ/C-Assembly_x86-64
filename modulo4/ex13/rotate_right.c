int rotate_right(int num, int nbits) {

	return (num >> nbits)|(num << (sizeof(int)*8 - nbits));

}
