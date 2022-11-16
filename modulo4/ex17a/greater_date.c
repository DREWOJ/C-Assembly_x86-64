unsigned int greater_date(unsigned int date1, unsigned int date2) {

	unsigned int month1, month2, year1, year2, day1, day2;

	unsigned int mask;
	
	mask = 0x000000ff; // mask 0 to 7 bits into 1

	month1 = date1 & mask;
	month2 =  date2 & mask;

	mask = 0x00ffff00; // mask 8 to 23 bits into 1

	year1 = date1 & mask;
	year2 = date2 & mask;

	mask = 0xff000000; // mask 24 to 31 bits into 1

	day1 = date1 & mask;
	day2 = date2 & mask;

	if (year1 > year2) {
		return date1;	
	} 
	if (year2 > year1) {
		return date2;
	}
	if (month1 > month2) {
		return date1;
	}
	if (month2 > month1) {
		return date2;
	}
	if (day1 > day2) {
		return date1;
	}
	if (day2 > day1) {
		return date2;
	}
	
	return date1;
}
