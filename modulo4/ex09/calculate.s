.section .data
	diff:
		.int 0	
	product:
		.int 0	
	
.section .text
	.global calculate # int calculate(int a, int b)
	
# rdi a
# rsi b
	
calculate:

	# diff = -8(%rbp)
	# product = -16(%rbp)

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
    subq $16, %rsp      # allocate 16 bytes for local variables

	pushq %rbp # prologue
	movq %rsp, %rbp
	
	movl %edi, %r8d # a
	movl %esi, %r9d # b

	subl %esi, %edi # diff
		
	movl %r8d, %eax # product
	imull %esi

	pushq %rdi # diff
		
	movl $'*', %edi
	movl %r8d, %esi
	movl %r9d, %edx
	movl %eax, %ecx

	pushq %rax # product
	pushq %rsi # a
	pushq %rdx # b
	
	call print_result

	popq %rdx # b
	popq %rsi # a
	popq %rax # product
	popq %rdi # diff

	movq %rdi, %rcx # diff
	
	movq %rdi, %r8 # diff

	pushq %r8 # diff
	pushq %rax # product
	
	movq $'-', %rdi
	
	call print_result	

	popq %rax # product
	popq %r8 # diff

 	subl %eax, %r8d # diff - product
	
	movl %r8d, %eax # result
	
	movq %rbp, %rsp # epilogue
	popq %rbp

ret
