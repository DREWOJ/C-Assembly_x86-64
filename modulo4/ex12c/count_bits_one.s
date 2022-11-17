.section .text
	.global count_bits_one # short count_bits_one(short x)

# x = %rdi

count_bits_one:

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
	
ret
