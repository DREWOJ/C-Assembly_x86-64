.section .text
	.global sum_multiples_x # int sum_multiples_x(char *vec, int x)

# vec = %rdi
# x = %rsi

sum_multiples_x:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	xorl %r8d, %r8d # r8d = 0
	xorl %eax, %eax # eax = 0
	sarq $8, %rsi # sil is 2nd byte of x

	testb %sil, %sil # cant divide by 0
	je end

	while:

		movb (%rdi), %al
		xorb %ah, %ah # clear remainder
		divb %sil

		testb %ah, %ah
		jne continue

		addb (%rdi), %r8b

	continue:
		incq %rdi

		movb (%rdi), %cl
		testb %cl, %cl
		jne while

	movl %r8d, %eax

end:

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
