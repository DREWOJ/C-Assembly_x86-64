void array_sort1(int *vec, int n) {
	
int temp = 0;
	for (int i = 0; i<n; i++) {
		for (int j = i + 1; j < n; j++) {
					if (vec[i] > vec[j]) {
							temp = vec[i];
							vec[i] = vec[j];
							vec[j] = temp; 
						}
					}
		}
	}
