#include <stdio.h>

int activate_bits(int a, int left, int right) {
    int mask = -1; // signed int with all bits as 1

    if(left != 31){
	mask <<= left+1;
    	a |= mask;
    }

    if(right != 0){
    	mask = -1;
    	mask <<= right;
    	mask = ~mask;
    	a |= mask;
    }

    return a;	

}
