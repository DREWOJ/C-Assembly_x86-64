.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global vec_search
	
vec_search:

	movq ptrvec(%rip), %rsi # places ptrvec into %rsi
	movl num(%rip), %edx
	movw x(%rip), %di
	movq $0, %rax
	
loop:

	cmpl $0, %edx # checks if the vec has ended
	je end
			
	cmpw %di, (%rsi) # checks if the word was found
	je found
	
	decl %edx # decrements num
	addq $2, %rsi # increments pointer
	
	jmp loop

found:
	movq %rsi, %rax # places %rsi into %rax

end:
ret
