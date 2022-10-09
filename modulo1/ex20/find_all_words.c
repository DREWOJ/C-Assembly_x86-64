#include "find_word.h"
#include "stddef.h"

void find_all_words(char* str, char* word, char** addrs){
	int flag = 1;
    char* addr = str;

    while(flag){
        addr = find_word(word, addr); //ex19 funcion that returns the address of the word in the string or null if it doesnt exists
        if(addr != 0){ //check if a word was found
            *addrs = addr; //stores the address of the first word found
            addrs++;
            addr++;
        }else{
            flag = 0;
        }
    }
}