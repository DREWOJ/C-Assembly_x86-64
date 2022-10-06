#include <stdio.h>
#include "palindrome.h"

int main() {

char str[] = "Never odd or even";

int isPalindrome = palindrome(str);
printf("%d\n", isPalindrome);

printf("%s palindrome\n", isPalindrome ? "Is" : "Is not" );

return 0;
}
