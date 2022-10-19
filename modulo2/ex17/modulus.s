.section .data
	.global op1
	
.section .text
	.global modulus
	
modulus:

	movl op1(%rip), %ecx # place op1 into %ecx
	
	addl %ecx, %ecx # adds %ecx with %ecx
	
	js number_negative # checks if the sum resulted in a negative number 
	
	movl op1(%rip), %eax # place op1 into %eax

ret


number_negative:
	
	movl op1(%rip), %ecx # place op1 into %ecx
	neg %ecx # negs %ecx
	movl %ecx, %eax # places %ecx into %eax
	
ret
