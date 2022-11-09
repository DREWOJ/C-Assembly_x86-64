.section .text
	.global inc_and_square # int inc_and_square(int* v1, int v2)
	
# %rdi v1
# %rsi v2	
	
inc_and_square:

	incl (%rdi)
	
	movslq %esi, %rax
	imulq %rax

ret
