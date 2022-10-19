.section .data
	.global op1
	
.section .text
	.global power2 # int power2(void)
	
power2:

	movl op1(%rip), %ecx # place op1 into %ecx
	movl op1(%rip), %eax # place op1 into %eax
	
	imul %ecx # divides %eax with %ecx
	
ret

