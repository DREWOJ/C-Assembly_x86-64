.section .data
	.global num
	.global ptrgrades
	.global ptrfreq
	
.section .text
	.global frequencies # void frequencies(void)


frequencies:
	movl num(%rip), %edx # places num in %edx
	movq ptrgrades(%rip), %rsi # pointer of vec grades placed in %rsi
	movq ptrfreq(%rip), %rax # pointer of vec freq placed in %rax
	movl $0, %edi 
	
fill_freq_with_zeros: 

	cmpl $21, %edi # checks if the vec has ended
	je loop
	
	movl $0, (%rax, %rdi, 4) # fills ptrfreq with zeros without losing the first position
	
	incl %edi
	
	jmp fill_freq_with_zeros


loop:
	
	cmpl $0, %edx # checks if the array has ended
	je end
			
	decl %edx # decrements %edx

	movsbl (%rsi), %r8d # places value of %rsi into %r8d
	
	addq $1, %rsi
	
	incl (%rax, %r8, 4) # increments the value of the position of the vec freq that corresponds to %r8d
	
	jmp loop
	
end:
ret
