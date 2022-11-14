.section .text
	.global proc # void proc(int x1, int *p1, int x2, int *p2, short x3, short *p3, char x4, char *p4)
	
# rdi x1
# rsi *p1
# rdx x2
# rcx *p2
# r8 x3
# r9 *p3
	
proc:

	# prologue ------------
	pushq %rbp
	movq %rsp, %rbp
	
	pushq %r12

	leaq (%rdi,%rdx,1), %r12 # x1 + x2
	movl %r12d, (%rsi) # *p1 = x1 + x2
	
	negq %rdi # -x1
	leaq (%rdi, %rdx,1), %r12
	movl %r12d, (%rcx) # *p2 = x2 - x1
	
	leaq (%r8, %rdx,1), %rdx
	movw %dx, (%r9) # *p3 = x3 + x2
	
	movsbq 16(%rbp), %r10
	leaq (%r10, %r10,2), %r10
	
	movq 24(%rbp), %r11
	movb %r10b, (%r11) # *p4 = x4 * 3		

	popq %r12

	# epilogue -------------
	movq %rbp, %rsp 
	popq %rbp	
	

ret
