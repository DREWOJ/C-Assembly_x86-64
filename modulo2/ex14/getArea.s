.section .data
	length1:
		.int  0
		.global length1
	
	length2:
		.int 0
		.global length2
	
	height:
		.int 0
		.global height
	
.section .text
	.global getArea # int getArea(void)
	
getArea:

	movl length1(%rip), %ecx
	movl length2(%rip), %edx
	movl height(%rip), %eax
	
	addl %edx, %ecx
	
	mull %ecx
	
	movl $2, %ecx
	
	divl %ecx
	
ret
