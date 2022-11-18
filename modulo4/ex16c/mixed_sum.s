.section .text
	.global mixed_sum # int mixed_sum(int a, int b, int pos)

# a = %rdi
# b = %rsi
# pos = %rdx


mixed_sum:

	pushq %rdi
	pushq %rsi
	pushq %rdx

	call join_bits

	movl %eax, %r8d

	popq %rdx
	popq %rdi
	popq %rsi

	call join_bits

	addl %r8d, %eax

ret
