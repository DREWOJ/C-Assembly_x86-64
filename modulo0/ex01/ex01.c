#include <stdio.h>

int main() {
	char charSize = sizeof(char);
	int intSize = sizeof(int);
	int unIntSize = sizeof(unsigned int);
	int longSize = sizeof(long);
	int shortSize = sizeof(short);
	int llSize = sizeof(long long);
	int floatSize = sizeof(float);
	int doubleSize = sizeof(double);
	
	
	
	printf("char size: %d\n", charSize);
	printf("int size: %d\n", intSize);
	printf("unsigned int size: %d\n", unIntSize);
	printf("long size: %d\n", longSize);
	printf("short size: %d\n", shortSize);
	printf("long long size: %d\n", llSize);
	printf("float size: %d\n", floatSize);
	printf("double size: %d\n", doubleSize);
	
	return 0;
}
