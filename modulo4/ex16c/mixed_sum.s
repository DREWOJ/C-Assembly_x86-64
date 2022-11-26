.section .text
	.global mixed_sum # int mixed_sum(int a, int b, int pos)

# a = %rdi
# b = %rsi
# pos = %rdx


mixed_sum:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP


	pushq %rdi
	pushq %rsi
	pushq %rdx

	call join_bits

	movl %eax, %r8d

	popq %rdx
	popq %rdi
	popq %rsi

	call join_bits

	addl %r8d, %eax

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
