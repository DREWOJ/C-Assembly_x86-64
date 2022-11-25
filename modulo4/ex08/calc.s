.section .text
	.global calc # int calc(int a, int * b, int c)

# a %rdi
# b %rsi
# c %rdx

calc:

	# z = -8(%rbp)

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
    subq $8, %rsp       # allocate 16 bytes for local variables

	movl (%rsi), %esi

	negl %esi # makes it -(*b)

	leaq (%esi, %edi, 2), %rax
	movl %eax, -8(%rbp)

	subl $4, %edx
	movl %edx, %eax

	imull -8(%rbp)

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp             # restore the original RBP value
	
ret
