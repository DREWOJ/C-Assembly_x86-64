.section .text
	.global reset_2bits # void reset_2bits(int *ptr, int pos)

# ptr = %rdi
# pos = %rsi

reset_2bits:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movl $1, %eax # mask1
	movl $0x80000000, %edx # mask2
	movq %rsi, %rcx # pos to rcx

	testq %rcx, %rcx
	jle skip_mask_pow
	# 2^pos
	loop:

		sall %eax
		shrl %edx

	loop loop

skip_mask_pow:

	notl %eax # ~mask1
	notl %edx # ~mask2

	andl (%rdi), %edx
	andl %edx, %eax
	movl %eax, (%rdi) 

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
