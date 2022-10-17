.section .data
		
	.global op1
	.global op2
	.global op3
	
.section .text
	.global sum3ints # long sum3ints(void)
	
sum3ints:
	movl op1(%rip), %eax # place op1 into eax

	addl op2(%rip), %eax # add op2 to eax
	addl op3(%rip), %eax # add op3 to eax

	movslq %eax, %rax # moves eax to rax turning int in long
	
ret
