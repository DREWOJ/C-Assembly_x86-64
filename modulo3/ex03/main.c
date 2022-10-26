#include <stdio.h>
#include "asm.h"

char str[] = "Hello world!";
char* ptr1 = str;
char* ptr2;

int main(void) {

    str_copy_porto2();

    for(int i = 0; i<12; i++){
        printf("%c", *(ptr2 + i));
    }
        
    return 0;	
}
