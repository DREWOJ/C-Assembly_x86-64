#include <stdio.h>
#include "asm.h"

char str[] = "Hello world!";
char* ptr1 = &str[0];
char str2[] = "";
char* ptr2 = &str2[0];

int main(void) {

    str_copy_porto2();

    for(int i = 0; i<12; i++){
        printf("%c", *(ptr2 + i));
    }
        
    return 0;	
}
