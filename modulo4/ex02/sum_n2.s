.section .text
	.global sum_n2 # long sum_n2(int n)


sum_n2:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movq $0, %rax
	cmpl $0, %edi
	jle end

	movq %rdi, %rcx
	movq $0, %rsi	
	loop:
		movq %rcx, %rax
		imulq %rax
		addq %rax, %rsi
		loop loop

	movq %rsi, %rax	

end:

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

	ret
