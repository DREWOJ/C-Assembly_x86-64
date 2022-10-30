.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_sum # long vec_avg(void)
	.global vec_avg # long vec_avg(void)

vec_sum:
	
	movq ptrvec(%rip), %rdx
	movq $0, %rax
	movw num(%rip), %si
	
loop:
	
	cmpw $0, %si
	je end_avg
	
	addq (%rdx), %rax
	
	addq $8, %rdx
	
	decw %si
	
	jmp loop

	
vec_avg:

	movq $0, %rax

	movswq num(%rip), %rsi

	cmpq $0, %rsi
	je end_avg

	call vec_sum
	cqto
	
	movw num(%rip), %si

	movswq %si, %rsi
	idivq %rsi
	
	
end_avg:

ret
