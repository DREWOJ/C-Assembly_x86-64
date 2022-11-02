#include <stdio.h>
#include "asm.h"

char vec[] = {1,2,3,4,5};
char* ptrgrades = &vec[0];
int num = 5;
int freq[20];
int* ptrfreq = &freq[0];

int main(void){
	
	frequencies();
	
	for (int i = 0; i < 20; i++)
	{
		printf("%d ", freq[i]);
	}

return 0;	
}
