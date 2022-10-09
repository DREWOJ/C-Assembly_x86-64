void frequencies(float *grades, int n, int *freq){
	// 21 --> 0 to 20 
	for(int i = 0; i<21; i++){
		freq[i] = 0;
	}

	for(int i = 0; i<n; i++){
		int grade = grades[i];
		freq[grade - grade%1]++; // Ex: grade = 8.9 --> 8.9 . 0.9 = 8
	}
}
