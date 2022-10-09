#include "find_word.h"
#include "stddef.h"

void find_all_words(char* str, char* word, char** addrs){
	int flag = 1;

    while(flag){
        int addr = find_word(word, str);
        if(addr != 0){
            *addrs = addr;
            addrs++;
            str = str - addr; 
        }else{
            flag = 0;
        }
    }
}