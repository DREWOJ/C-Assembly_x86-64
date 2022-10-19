.section .data
	.global op1
	.global op2
	
.section .text
	.global sum # int sum
	
sum:
	movl op1(%rip), %ecx # place op1 into %ecx
	movl op2(%rip), %eax # place op2 into %eax
	
	addl %ecx, %eax # adds %ecx with %eax
	
ret
