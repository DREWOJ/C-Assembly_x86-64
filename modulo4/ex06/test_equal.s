.section .text
	.global test_equal # int test_equal(char *a, char *b)

# a %rdi
# b %rsi

test_equal:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
	
	movl $1, %eax

while:
	movb (%rsi), %cl
	cmpb (%rdi), %cl
	jne ret_false

	incq %rdi
	incq %rsi

	cmpb $0, %cl
	jne while

	jmp end

ret_false:
	movl $0, %eax


end:
	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

	ret
