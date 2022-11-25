.section .text
	.global incr # int incr(short *p1, char val)
	.global call_incr # int call_incr(short w)

# p1 %rdi 
# val %rsi

incr:

	# x = -8(%rbp)
	# y = -16(%rbp)

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
    subq $16, %rsp      # allocate 16 bytes for local variables

	movswl (%rdi), %eax # *p1 into eax
	movl %eax, -8(%rbp) # eax into x
	movsbl %sil, %esi
	addl %esi, %eax # esi into eax
	movl %eax, -16(%rbp) # eax into y
	movw %ax, (%rdi)  # ax, into *p1
	movl -8(%rbp), %eax # x into eax

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp             # restore the original RBP value

ret	

call_incr:

	# x1 = -8(%rbp)
	# y2 = -16(%rbp)

	# prologue
	pushq %rbp             # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
    subq $16, %rsp       # allocate 16 bytes for local variables

	movw %di, %ax
	addw $3, %ax
	movw %ax, -8(%rbp)

	leaq -8(%rbp), %rdi
	movq $0xC3, %rsi

	call incr

	movl %eax, -16(%rbp)

	movswl -8(%rbp), %esi

	addl %esi, %eax

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
