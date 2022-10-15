.section .data
	.global op1
	
.section .text
	.global power2 # int power2(void)
	
power2:

	movl op1(%rip), %ecx
	movl op1(%rip), %eax
	
	imul %ecx
	
ret

