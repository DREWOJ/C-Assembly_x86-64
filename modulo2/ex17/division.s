.section .data
	.global op1
	.global op2
		
.section .text
	.global division # int divison
	
division:
	movl op1(%rip), %eax
	movl op2(%rip), %ecx
	
	idiv %ecx
	
	
ret
