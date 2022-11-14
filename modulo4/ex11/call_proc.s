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
	
	# prologue ------------
	pushq %rbp
	movq %rsp, %rbp
	
	movl %edi, x1(%rip)
	movl %esi, x2(%rip)
	movw %dx, x3(%rip)
	movb %cl, x4(%rip)

	leaq x1(%rip), %rsi # &x1	
	
	movl x2(%rip), %edx
	leaq x2(%rip), %rcx # &x2

	movw x3(%rip), %r8w
	leaq x3(%rip), %r9 # &x3
	
	leaq x4(%rip), %r11 # &x4
	pushq %r11
	
	movb x4(%rip), %r10b #x4
	pushq %r10
	
	call proc
	
	popq %r10
	popq %r11
	
	movl x1(%rip), %edx
	addl x2(%rip), %edx

	movw x3(%rip), %di
	
	movsbw x4(%rip), %cx
	sub %cx, %di

	movswl %di, %edi
	
	movl %edi, %eax
	imull %edx
	
	# epilogue ------------
	movq %rbp, %rsp
	popq %rbp
	
ret
