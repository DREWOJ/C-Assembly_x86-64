#include <stdio.h>
#include "asm.h"

char str[] = "hello world!";
char* ptr1 = str;
char str[] = "xpto";
char* ptr2 = str;

char* ptr3;


int main(void) {

    str_cat();
        
    return 0;	
}