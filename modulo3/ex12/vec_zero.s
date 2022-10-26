.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_zero # unsigned char vec_zero(void)
	
vec_zero:

	movq ptrvec(%rip), %rsi # store pointer in rsi
	movl num(%rip), %edi # store vec length in edi
	movb $0, %al # result

while:
	cmpl $0, %edi # if num=0 jumps to end
	je end

	cmpl $100, (%rsi) # check if poited value is greater or equal 100
	jge greater_or_equal

do:
	addq $4, %rsi # adds 4 (long size) to pointer value

	decl %edi # decrement num

	jmp while

greater_or_equal:

    movl $0, (%rsi) # set poited value to 0
    incb %al

	jmp do
	
end:
	ret
