.section .data
	.global num
	
.section .text
	.global steps # int steps(void)
	
steps:

	movq $3, %rdi # copys 3 to rdi
	movq num(%rip), %rax # copys num to eax

	imulq %rdi # multiplies rax by 3
	addq $6, %rax # adds 6 to rax

	cqto # converts the signed quad in % rax to the signed octa in % rdx :% rax
	idivq %rdi # divides rax by 3

	addq $12, %rax # adds 12 to rax
	subq num(%rip), %rax # subtracts num to rax
	subq $1, %rax # subtracts 1 to rax

	
ret
