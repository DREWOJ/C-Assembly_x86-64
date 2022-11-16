#include <stdio.h>

int count_bits_one(int x) {
    int count = 0;
    for(int i = 0; i<32; i++){
        count += (x & 1);
        x >>= 1; 
    }  
    return count;  
}

