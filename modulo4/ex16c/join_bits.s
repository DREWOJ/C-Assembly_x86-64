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

		sall %eax
		incl %eax

	loop loop

skip_mask_shift:

	andl %eax, %edi
	notl %eax
	andl %eax, %esi
	orl %edi, %esi
	movl %esi, %eax

ret
