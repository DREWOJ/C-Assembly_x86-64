.section .text
	.global count_odd # int count_odd(char* vec, int n)
	
# %rdi vec
# %rsi n	
	
count_odd:
	movb $2, %cl
	movl $0, %edx
	
loop:
	cmpl $0, %esi
	je end
	
	movb (%rdi), %al
	movsbw %al, %ax
	idivb %cl
	
	cmpb $0, %ah # checks if the number is even, if not its odd
	jne found
	
	incq %rdi
	decl %esi

	jmp loop
	
found:

	incl %edx # increments the number of odd numbers found
	
	decl %esi
	incq %rdi
	
	jmp loop
	
	
end:
	movl %edx, %eax
ret
