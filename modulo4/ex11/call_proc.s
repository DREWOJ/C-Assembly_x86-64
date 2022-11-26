.section .data
	x1:
		.int 0
	x2:
		.int 0
	x3: 
		.word 0
	x4:
		.byte 0

.section .text
	.global call_proc # int call_proc(int a, int b, short c, char d)

# rdi a
# rsi b
# rdx c
# rcx d

call_proc:
	
	# x1 = -8(%rbp)
	# x2 = -16(%rbp)
	# x3 = -24(%rbp)
	# x4 = -32(%rbp)

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP
    subq $32, %rsp      # allocate 16 bytes for local variables
	
	movl %edi, -8(%rbp)
	movl %esi, -16(%rbp)
	movw %dx, -24(%rbp)
	movb %cl, -32(%rbp)

	leaq -8(%rbp), %rsi # &x1	
	
	movl -16(%rbp), %edx
	leaq -16(%rbp), %rcx # &x2

	movw -24(%rbp), %r8w
	leaq -24(%rbp), %r9 # &x3
	
	leaq -32(%rbp), %r11 # &x4
	pushq %r11
	
	movb -32(%rbp), %r10b #x4
	pushq %r10
	
	call proc
	
	popq %r10
	popq %r11
	
	movl -8(%rbp), %edx
	addl -16(%rbp), %edx

	movw -24(%rbp), %di
	
	movsbw -32(%rbp), %cx
	sub %cx, %di

	movswl %di, %edi
	
	movl %edi, %eax
	imull %edx
	
	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value
	
ret
