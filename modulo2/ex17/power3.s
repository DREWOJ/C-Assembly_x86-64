.section .data
	.global op1
	
.section .text
	.global power3 # int power3(void)
	
power3:

	movl op1(%rip), %ecx # place op1 into %ecx
	movl op1(%rip), %eax # place op1 into %eax
	
	imul %ecx # multiples %eax with %ecx
	
	imul %ecx # multiples %eax with %ecx

ret
