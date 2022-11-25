.section .text
	.global inc_and_square # int inc_and_square(int* v1, int v2)
	
# %rdi v1
# %rsi v2	
	
inc_and_square:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	incl (%rdi)
	
	movslq %esi, %rax
	imulq %rax

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
