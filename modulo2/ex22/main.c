#include <stdio.h>
#include "functions_asm.h"
#include "functions_c.h"


int i = 0, j = 0;

int main(void) {
	 
    printf("Enter i:");
    scanf("%d",&i);

    printf("Enter j:");
    scanf("%d",&j);
    


    //printf("f = %hd\n", f());
    //printf("f2 = %hd\n", f2());
    //printf("f3 = %hd\n", f3());
    //printf("f4 = %hd\n", f4());

    printf("f1_a = %hd\n", f1_a());
    printf("f2_a = %hd\n", f2_a());
    //printf("f3_a = %hd\n", f3_a());
    //printf("f4_a = %hd\n", f4_a());
            
    return 0;	
}
