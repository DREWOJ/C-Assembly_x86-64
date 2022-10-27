.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global vec_search
	
vec_search:

	movq ptrvec(%rip), %rsi
	movl num(%rip), %edx
	movw x(%rip), %di
	movq $0, %rax
	
loop:

	cmpl $0, %edx
	je end
			
	cmpw %di, (%rsi)
	je found
	
	decl %edx
	addq $2, %rsi
	
	jmp loop

found:
	movq %rsi, %rax

end:
ret
