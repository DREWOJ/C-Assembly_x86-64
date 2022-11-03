#include <stdio.h>
#include "asm.h"

char str[] = "hello world!";
char* ptr1 = &str[0];
char str2[] = "xpto";
char* ptr2 = &str2[0];

char str3[] = "";
char* ptr3 = &str3[0];


int main(void) {

    str_cat();

    for(int i = 0; i<16; i++){
        printf("%c\n", *(ptr3 + i));
    }
        
    return 0;	
}
