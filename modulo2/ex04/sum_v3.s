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
	movslq op2(%rip), %rdx # copys op2 to rdx changin it to quad
	movslq op1(%rip), %rsi # copys op3 to rdx changin it to quad
	
	addq op3(%rip), %rax # add op3 to rax
	subq %rdx, %rax # sub op2 to rax
	subq %rdx, %rax # sub op2 to rax
	addq %rsi, %rax # add op1 to rax
	addq %rsi, %rax # add op1 to rax
	
ret 
