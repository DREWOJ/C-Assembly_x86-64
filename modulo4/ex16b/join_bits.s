.section .text
	.global join_bits # int join_bits(int a, int b, int pos)

# a = %rdi
# b = %rsi
# pos = %rdx


join_bits:

	movl $1, %eax # mask
	movq %rdx, %rcx # pos to rcx

	testq %rcx, %rcx
	jle skip_mask_shift
	# mask -> ex. 000111
	loop:

		shrl %eax
		incl %eax

	loop loop

skip_mask_shift:


	andl %eax, %edi
	negl %eax # ~mask -> ex. 111000
	andl %eax, %esi
	orl %esi, %edi
	movl %edi, %eax

ret
