.section .data
	.global op1
	.global op2
	
.section .text
	.global test_flags 
	
test_flags:

	movl op1(%rip), %ecx # place op1 into ecx
	movl op2(%rip), %eax # place op2 into eax

	addl %eax, %ecx # add eax into ecx
	
	jc _flag # checks if carry flag was activated
	
	jo _flag # checks if overflow flag was activated
	
	movl $0, %eax # places $0 if none flag was activated
ret
	
	_flag:
		movl $1, %eax # places $1 if at least one flag was activated
ret
