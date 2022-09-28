#include <stdio.h>

void function() {
	int x = 5;
	int* xPtr = &x;
	float y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};
	
	printf("x = %d\n", x);
	printf("y = %f\n", y);
	printf("address (hex) x = %p\n", &x);
	printf("address (hex) xPtr = %p\n", &xPtr);
	printf("value pointed by xPtr = %d\n", *xPtr);
	printf("address vec = %p\n", &vec);
	printf("value vec[0] = %d\n", vec[0]);
	printf("value vec[1] = %d\n", vec[1]);
	printf("value vec[2] = %d\n", vec[2]);
	printf("value vec[3] = %d\n", vec[3]);
	printf("address vec[0] = %p\n", &vec[0]);
	printf("address vec[1] = %p\n", &vec[1]);
	printf("address vec[2] = %p\n", &vec[2]);
	printf("address vec[3] = %p\n", &vec[3]);
	
	/*b) The address of vec is equal to the vec[0] because the pointer vec corresponds to the first position of the array. 
	 * vec is an array of integers so the positions of the array are consecutive by 4 bytes.  */
	
	/*c) On different computers it would result in different addresses of the variables*/
	}

