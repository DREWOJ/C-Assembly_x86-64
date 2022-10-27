.section .data
	.global num
	.global ptrvec
	
.section .text
	.global keep_positives # void keep_positives(void)
	
keep_positives:

	movw num(%rip), %dx # places num in %dx
	movq ptrvec(%rip), %rsi # places ptrvec in %rsi
	movw $0, %r8w # index counter
	
loop:
		
	cmpw %r8w, %dx # checks if counter has reached num
	je end
	
	movw (%rsi), %di # places value of %rsi in %di
	
	cmpw $0, %di # checks if %di is negative
	jl found
	
	addq $2, %rsi # increments pointer

	incw %r8w # increments counter

	jmp loop

found:	

	movw %r8w, (%rsi) # moves index into %rsi
	addq $2, %rsi # increments pointer
	incw %r8w # increments counter
	
	jmp loop

end:
ret
	
