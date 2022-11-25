.section .text
	.global count_odd # int count_odd(char* vec, int n)
	
# %rdi vec
# %rsi n	
	
count_odd:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

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

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
