#include <stdio.h>
#include "asm.h"

char str[] = "hello world!";
char* ptr1 = &str[0];

int main(void) {

    encrypt();

    for(int i = 0; i<12; i++){
        printf("%c", str[i]);
    }
        
    return 0;	
}