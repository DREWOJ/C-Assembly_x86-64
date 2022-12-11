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


// in unions the memory is shared by individual members of the union resulting on saving memory space, 
// in this case resulting on the first attribute giving the size of it 
// 
// in structs each member has an assigned unique area of location in the memory resulting on spending more memory space, 
// in this case we need to be add all the size of each attributes and sometimes fill some spaces to align the struct
//

return 0;
}
