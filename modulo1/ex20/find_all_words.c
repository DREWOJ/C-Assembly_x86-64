#include "find_word.h"
#include "stddef.h"

void find_all_words(char* str, char* word, char** addrs){
	int flag = 1;
    char* addr = str;

    while(flag){
        addr = find_word(word, addr);
        if(addr != 0){
            *addrs = addr;
            addrs++;
            addr++;
        }else{
            flag = 0;
        }
    }
}