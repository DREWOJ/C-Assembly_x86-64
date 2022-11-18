#include <stdio.h>

int sum_multiples_x(char *vec, int x) {
    int res = 0;
    unsigned char second_byte = *((unsigned char*) &x + 1);
    while(*vec != 0){
        if(*vec % second_byte == 0)
            res += *vec;
        vec++;
    }
    return res;
}
