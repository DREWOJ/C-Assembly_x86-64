#include <stdio.h>
#include "asm.h"

short vec[] = {-1,-1,-1};
short* ptrvec = &vec[0];
unsigned short num = 3;

int main(void){
	
	keep_positives();

	for (int i = 0; i < num; i++)
	{
		printf("%d\n", vec[i]);
	}
	
	
return 0;	
}
