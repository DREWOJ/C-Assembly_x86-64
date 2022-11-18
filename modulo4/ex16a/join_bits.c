#include <stdio.h>

int join_bits(int a, int b, int pos) {
    int mask = 1;
    for(int i = 0; i<pos; i++){ 
        mask *= 2; 
        mask++;
    }
    return (a & mask) | (b & ~mask);
}


