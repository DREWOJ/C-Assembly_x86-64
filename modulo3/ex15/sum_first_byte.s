.section .data
	.global num
	.global ptrvec
	
.section .text
	.global sum_first_byte # void keep_positives(void)
	
sum_first_byte:

	movl num(%rip), %edx # places num in %edx
	movq ptrvec(%rip), %rsi # places ptrvec in %rsi
	movl $0, %eax
	
loop:

	cmpl $0, %edx # checks if the vec has ended
	je end
	
	movb (%rsi), %dil # places the first byte of the long number into %dil
	
	movsbl %dil, %ecx # places %dil into %ecx
	
	addl %ecx,%eax # adds %ecx with %eax
	
	addq $8, %rsi # points to next long
	
	decl %edx # decrements num

	jmp loop

end:
ret
	
