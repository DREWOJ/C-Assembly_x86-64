.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_add_two # vec_add_two(void)
	
vec_add_two:

	movq ptrvec(%rip), %rsi # store pointer in rsi
	movl num(%rip), %eax # store vec length in eax

while:
	cmpl $0, %eax # if num=0 jumps to end
	je end

	addl $2, (%rsi) # adds 2 to pointed value
	addq $4, %rsi # adds 4 (long size) to pointer value

	decl %eax # decrement num

	jmp while
	
end:
	ret
