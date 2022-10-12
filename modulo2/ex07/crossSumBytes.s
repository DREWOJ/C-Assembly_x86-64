.section .data
	.global s1
	.global s2
	
.section .text
	.global crossSumBytes # short crossSumBytes(void)
	
crossSumBytes:
	movw s1(%rip), %cx # place s1 into cx
	movw s2(%rip), %dx # place s2 into dx
	
	addb %dl, %ch # add byte dl of dx into ch of cx
	addb %dh, %cl # add byte dh of dx into cl of cx
	
	movw %cx, %ax
ret
