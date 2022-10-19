.section .data
		.global length1
		.global lenght2
		.global height
	
.section .text
		.global getArea # int getArea(void)
	
getArea:

	movl length1(%rip), %ecx # place length1 into %ecx
	movl length2(%rip), %edx # place length2 into %edx
	movl height(%rip), %eax #place height into %eax
	
	addl %edx, %ecx # add %edx in %ecx
	
	mull %ecx # multiplies %ecx with %eax
	
	movl $2, %ecx # place 2 into %ecx
	
	divl %ecx # divides %eax with %ecx
	
ret
