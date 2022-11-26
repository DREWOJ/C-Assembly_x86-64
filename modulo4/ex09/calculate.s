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
	
	movl %edi, %r8d # a
	movl %esi, %r9d # b

	subl %esi, %edi # diff
  
  movl %edi, -8(%rbp)

	movl %r8d, %eax # product
	imull %esi

	movl %eax, -16(%rbp)
		
	movl $'*', %edi
	movl %r8d, %esi
	movl %r9d, %edx
	movl %eax, %ecx

	pushq %rsi # a
	pushq %rdx # b
	
	call print_result

	popq %rdx # b
	popq %rsi # a

	movq -8(%rbp), %rcx # diff
	
	movq $'-', %rdi
	
	call print_result	

  movl -8(%rbp), %r8d # diff
  movl -16(%rbp), %eax

 	subl %eax, %r8d # diff - product
	
	movl %r8d, %eax # result
	
	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
