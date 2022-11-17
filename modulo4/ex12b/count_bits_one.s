.section .text
	.global count_bits_one # int count_bits_one(int x)

# x = %rdi

count_bits_one:

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
	
ret
