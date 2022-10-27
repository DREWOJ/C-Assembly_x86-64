.section .data
	.global ptrvec
	.global num


.section .text
	.global vec_greater10 # int vec_greater10(void)


vec_greater10:
	
	movq ptrvec(%rip), %rsi # places ptrvec in %rsi
	movl num(%rip), %edx # places num in %edx
	movl $0, %eax # places null in %eax
	
loop:
	
	cmpl $0, %edx # checks if the vec has ended
	je end 
	
	decl %edx # decrements 1 of %edx
	
	cmpl $10, (%rsi) # checks if the number is greater than 10
	jg found
	
	addq $4, %rsi # points to next int
	
	jmp loop

found:

	incl %eax # increments 1 number found
	addq $4, %rsi # points to next int
	jmp loop

end:
ret
