.section .text
	.global changes # void changes(int *ptr)

# ptr = %rdi

changes:

	# prologue
	pushq %rbp          # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP


	incq %rdi
	movb (%rdi), %al # 2nd byte to al

	cmpb $15, %al # check if 2nd byte is > 15
	jbe end # (unsigned)

	incq %rdi
	movb (%rdi), %al # 3rd byte to al

	notb %al # invert byte

	movb %al, (%rdi)
	
end:

	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
