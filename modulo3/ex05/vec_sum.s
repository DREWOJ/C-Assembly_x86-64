.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_sum # long vec_sum(void)
	.global vec_avg # long vec_avg(void)

vec_sum:
	
	movq ptrvec(%rip), %rdx # places ptrvec into %rdx
	movq $0, %rax
	movw num(%rip), %si
	
loop:
	
	cmpw $0, %si # checks if the vec ended
	je end
	
	addq (%rdx), %rax # sums all numbers inside vec
	
	addq $8, %rdx
	
	decw %si
	
	jmp loop

	
vec_avg:

	movq $0, %rax

	movswq num(%rip), %rsi

	cmpq $0, %rsi # checks if the num is 0 to avoid div for 0
	je end

	call vec_sum # gets the sum 
	cqto
	
	movw num(%rip), %si

	movswq %si, %rsi
	idivq %rsi
	
end:

ret
