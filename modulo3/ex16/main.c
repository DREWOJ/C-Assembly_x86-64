#include <stdio.h>
#include "asm.h"


char str[] = "12345";
char* ptr1 = &str[0];
char str2[] = "54321";
char* ptr2 = &str2[0];
int num = 5;


int main(void) {

    swap();

    for(int i = 0; i<num; i++){
        printf("%c", str[i]);
    }

    printf("\n");

    for(int i = 0; i<num; i++){
        printf("%c", str2[i]);
    }
        
    return 0;	
}