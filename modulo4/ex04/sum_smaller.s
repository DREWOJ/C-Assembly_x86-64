.section .text
	.global sum_smaller # int sum_smaller(int num1, int num2, int *smaller)

# num1 %rdi
# num2 %rsi
# smaller %rdx

sum_smaller:
	movl %edi, %eax
	addl %esi, %eax
	cmpl %edi, %esi
	jg greater

	movl %esi, (%rdx)
	jmp end

greater:
	movl %edi, (%rdx)
end:
	ret
