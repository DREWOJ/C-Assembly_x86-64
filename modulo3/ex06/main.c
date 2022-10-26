#include <stdio.h>
#include "asm.h"

char str[] = "hello world!";
char* ptr1 = str;

int main(void) {

    encrypt();

    for(int i = 0; i<5; i++){
        printf("%c", str[i]);
    }
        
    return 0;	
}