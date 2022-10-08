void frequencies(float *grades, int n, int *freq){
	for(int i = 0; i<21; i++){
		freq[i] = 0;
	}

	for(int i = 0; i<n; i++){
		int grade = grades[i];
		freq[grade - grade%1]++;
	}
}
