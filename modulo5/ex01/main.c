#include <stdio.h>

int main(void) {

union union_u1{
char vec[32];
float a;
int b;
} u;

struct struct_s1{
char vec[32];
float a;
int b;
} s;

printf("size of union_u1 = %ld\n", sizeof(u));
printf("size of struct_s1 = %ld\n", sizeof(s));


// in unions the memory is shared by individual members of the union resulting on saving memory space
// in structs each member has an assigned unique area of location in the memory resulting onspendingg more memory space

return 0;
}
