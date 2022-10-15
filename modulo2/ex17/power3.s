.section .data
	.global op1
	
.section .text
	.global power3 # int power3(void)
	
power3:

	movl op1(%rip), %ecx
	movl op1(%rip), %eax
	
	imul %ecx
	
	imul %ecx

ret
