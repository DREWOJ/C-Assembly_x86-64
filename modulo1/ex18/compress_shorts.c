void compress_shorts(short* shorts, int n_shorts, int* integers){
	for(int i=0; i< n_shorts;i++){
		((short*)integers)[i] = shorts[i]; // runs integers array as a short array
    }
}
