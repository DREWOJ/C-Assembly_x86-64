.section .data
	.global op1
	.global op2
	.equ CONST, 20

.section .text
	.global sum_v3 # int sum_v3(void)

sum_v3:

	movl op1(%rip), %ecx # place op1 in ecx
	movl op2(%rip), %eax # place op2 in eax
	movl $CONST ,%edx # place CONST in edx
	
	addl %ecx, %ecx # add ecx to ecx
	subl %ecx, %edx  # sub const to ecx

	addl %edx, %eax # add ecx to eax
	
ret 
