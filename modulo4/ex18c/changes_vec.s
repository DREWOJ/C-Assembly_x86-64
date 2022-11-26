.section .text
	.global changes_vec # void changes_vec(int *ptrvec, int num)

# ptrvec = %rdi
# num = %rsi

changes_vec:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP


	movq %rsi, %rcx
	testq %rcx, %rcx
	je end

	movq %rdi, %rsi

	loop:

		movq %rsi, %rdi
		call changes
		addq $4, %rsi 

	loop loop
	
end:

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
