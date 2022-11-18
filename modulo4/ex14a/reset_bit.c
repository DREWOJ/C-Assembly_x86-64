#include <stdio.h>

int reset_bit(int *ptr, int pos) {
    int mask = 1;
    for(int i = 0; i<pos; i++){ 
        mask *= 2; 
    }
    int res = *ptr & mask; 
    *ptr &= ~mask;
    if(res != 0)
        return 1;
    return 0;

}


