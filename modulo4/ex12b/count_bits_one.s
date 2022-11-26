.section .text
	.global count_bits_one # int count_bits_one(int x)

# x = %rdi

count_bits_one:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movl $0x80000000, %esi # mask
	xor %eax, %eax
	movq $32, %rcx

	loop:

		movl %edi, %edx
		andl %esi, %edx

		shrl $1, %esi

		testl %edx, %edx
		je jump

		incl %eax

		jump:

	loop loop

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value
	
ret
