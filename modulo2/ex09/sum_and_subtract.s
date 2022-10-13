.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global sum_and_subtract # long sum_and_subtract(void)
	
sum_and_subtract:

movslq A(%rip), %rcx # A

movswq B(%rip), %rdi # B

movsbq C(%rip), %rsi # C

movsbq D(%rip), %rdx # D

addq %rsi, %rcx # C + A

subq %rdx, %rcx # C + A - D

addq %rcx, %rdi # C + A - D + B

movq %rdi, %rax	 # ret

ret
