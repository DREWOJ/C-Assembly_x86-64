.section .text
	.global cube # long cube(int x)


cube:

	# prologue
	pushq %rbp             # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movslq %edi, %rdi # places x into %rdi
	
	# mulq power of 3
	movq %rdi, %rax
	imulq %rdi
			
	imulq %rdi
	
	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp             # restore the original RBP value

ret
