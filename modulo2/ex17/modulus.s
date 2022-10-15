.section .data
	.global op1
	
.section .text
	.global modulus
	
modulus:

	movl op1(%rip), %ecx
	
	addl %ecx, %ecx
	
	js number_negative
	
	movl op1(%rip), %eax

ret


number_negative:
	
	movl op1(%rip), %ecx
	neg %ecx
	movl %ecx, %eax
	
ret
