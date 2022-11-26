.section .text
	.global count_bits_one # short count_bits_one(short x)

# x = %rdi

count_bits_one:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movw $0x8000, %si # mask
	xor %eax, %eax
	movq $16, %rcx

	loop:

		movw %di, %dx
		andw %si, %dx

		shrw $1, %si

		testw %dx, %dx
		je jump

		incl %eax

		jump:

	loop loop

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value
	
ret
