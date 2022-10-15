.section .data
	.global op1
	.global op2
	
.section .text
	.global subt # int sub
	
subt:
	movl op1(%rip), %ecx
	movl op2(%rip), %eax
	
	subl %eax, %ecx
	
	movl %ecx, %eax

ret
