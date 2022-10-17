.section .data
	.global op1
	.global op2
	.global op3
	.global op4 

	op3 :
		.quad 0

	op4 :
		.quad 0

.section .text
	.global sum_v3 # int sum_v3(void)

sum_v3:

	movq op4(%rip), %rax # place op4 in rax
	
	addq op3(%rip), %rax # add op3 to rax
	subq op2(%rip), %rax # sub op2 to rax
	subq op2(%rip), %rax # sub op2 to rax
	addq op1(%rip), %rax # add op1 to rax
	addq op1(%rip), %rax # add op1 to rax
	
ret 
