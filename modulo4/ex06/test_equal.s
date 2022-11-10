.section .text
	.global test_equal # int test_equal(char *a, char *b)

# a %rdi
# b %rsi

test_equal:
	
	movl $1, %eax

while:
	movb (%rsi), %cl
	cmpb (%rdi), %cl
	jne ret_false

	incq %rdi
	incq %rsi

	cmpb $0, %cl
	jne while

	ret

ret_false:
	movl $0, %eax
	ret
