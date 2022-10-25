.section .data
	.global op1
	.global op2
		
.section .text
	.global division # int divison
	
division:
	movl op1(%rip), %eax # places op1 into %eax
	cltd
	movl op2(%rip), %ecx # places op2 into %ecx
	
	cmpl $0, %ecx
	
	je div_zero
	
	idiv %ecx # divides %eax with %ecx
	
ret

div_zero:
	movl $0, %eax

ret
