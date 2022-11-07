.section .text
	.global cube # long cube(int x)


cube:

	movslq %edi, %rdi # places x into %rdi
	
	# mulq power of 3
	movq %rdi, %rax
	imulq %rdi
			
	imulq %rdi
	

ret
