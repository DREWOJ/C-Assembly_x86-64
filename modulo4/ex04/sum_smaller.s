.section .text
	.global sum_smaller # int sum_smaller(int num1, int num2, int *smaller)

# num1 %rdi
# num2 %rsi
# smaller %rdx

sum_smaller:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movl %edi, %eax
	addl %esi, %eax
	cmpl %edi, %esi
	jg greater

	movl %esi, (%rdx)
	jmp end

greater:
	movl %edi, (%rdx)
end:

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value
	ret
