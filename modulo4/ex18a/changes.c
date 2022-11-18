#include <stdio.h>

void changes(int *ptr) {
    unsigned char *ptr1 = (unsigned char*) ptr;

    if(*(ptr1 + 1) > 15)
        *(ptr1 + 2) = ~(*(ptr1 + 2));
}
