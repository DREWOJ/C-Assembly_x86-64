int sort_without_reps(int *src, int n, int *dest) {

int items = 0; // variable to count the numbers placed in the dest
int temp; // helps to sort the array
int tempArr[n]; // temporary array to not change the values of the initial array

	for (int i = 0; i<n; i++) { // copies to the temporary array the values
		tempArr[i] = src[i];
	}
		
	for (int i = 0; i<n; i++) { // sorts the array by ascending order
		for (int j = i + 1; j<n; j++) {
			if (tempArr[i] > tempArr[j]) {
				temp = tempArr[i];
				tempArr[i] = tempArr[j];
				tempArr[j] = temp;
			}
		}
	}
	
	for (int i = 0; i<n; i++) { // checks the duplicated values
		if (tempArr[i] == tempArr[i+1]) { 
			for (int j = i + 1; j<n; j++) {
				tempArr[j] = tempArr[j+1];
			}
			n--; // decreases the number of items needed to iterate
			i--; // decreases the i index to check again the position
		} 
	}

	for (int i = 0; i<n; i++) { // places the content of the tempArr on the dest and counts the items placed
		dest[i] = tempArr[i];
		items++;
	}
	
	return items;
}

	

