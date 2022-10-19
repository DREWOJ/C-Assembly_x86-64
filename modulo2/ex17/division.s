.section .data
	.global op1
	.global op2
		
.section .text
	.global division # int divison
	
division:
	movl op1(%rip), %eax # places op1 into %eax
	movl op2(%rip), %ecx # places op2 into %ecx
	
	idiv %ecx # divides %eax with %ecx
	
	
ret
