#include <stdio.h>
#include "asm.h"



unsigned int build_date(int year, int month, int day) {


	return (year << 8) | (day << 24) | month ;


}

int main(void) {
		
	int date = greater_date(build_date(2023,10,10),build_date(2022,10,10));
	printf("%s\n", date == build_date(2023,10,10) ? "date1" : "date2");

	return 0;
}


