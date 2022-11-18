.section .text
	.global reset_bit # int reset_bit(int *ptr, int pos)

# ptr = %rdi
# pos = %rsi

reset_bit:


	movl $1, %eax # mask
	movq %rsi, %rcx # pos to rcx
	movl $2, %esi

	testq %rcx, %rcx
	jle skip_mask_pow
	# 2^pos
	loop:

		pushq %rcx
		imull %esi
		popq %rcx

	loop loop

skip_mask_pow:

	movl %eax, %ecx # mask to ecx

	# if (value & mask) != 0 -> changed -> return 1
	# if (value & mask) == 0 -> not changed -> return 0
	andl (%rdi), %eax
	testl %eax, %eax
	jne changed 


continue:

	notl %ecx # ~ecx
	andl (%rdi), %ecx
	movl %ecx, (%rdi) 

ret

changed:
	movl $1, %eax
	jmp continue

