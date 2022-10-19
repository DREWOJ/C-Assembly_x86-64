.section .data
	.global op1
	.global op2
	
.section .text
	.global multiplication # int multiplication
	
multiplication:
	movl op1(%rip), %ecx # place op1 into %ecx
	movl op2(%rip), %eax # place op2 into %eax
	
	imull %ecx # multiplies %eax with %ecx
	cltd # extends the signal of the previous operation
ret
