.section .data
	.global A
	.global B
	.global C
	.global D
	
	
.section .text
	.global compute # int compute(void)


compute:

	movl A(%rip), %ecx
	movl B(%rip), %eax
	movl C(%rip), %esi
	movl D(%rip), %edi
	
	cmpl $0, D(%rip) # compares if D is 0
	
	je flag # checks if zero flag was activated
	
	imull %ecx # multiplies %eax with %ecx
	
	subl %esi, %eax # sub %eax - %esi
	
	cltd # extends signal
	
	idivl %edi # divides %eax with %edi
	
ret

flag:
	movl $0, %eax
	
ret
