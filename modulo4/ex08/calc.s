.section .data
z:
	.int 0
.section .text
	.global calc # int calc(int a, int * b, int c)

# a %rdi
# b %rsi
# c %rdx

calc:

	movl (%rsi), %esi

	negl %esi # makes it -(*b)

	leaq (%esi, %edi, 2), %rax
	movl %eax, z(%rip)

	subl $4, %edx
	movl %edx, %eax

	imull z(%rip)
	
ret
