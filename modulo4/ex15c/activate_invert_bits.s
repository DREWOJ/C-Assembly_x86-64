.section .text
	.global activate_invert_bits # int activate_invert_bits(int a, int left, int right)

#rdi a
#rsi left
#rdx right

activate_invert_bits:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
		
	call activate_bits
	
	notl %eax

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
