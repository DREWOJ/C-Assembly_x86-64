.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global exists # int exists(void)
	.global vec_diff # int vec_diff(void)
	
vec_diff:
	movl $0, x(%rip)

	movl $0, %edi # set edi (result) to 0
	movq num(%rip), %rcx # mov vec lenght to rcx
	movq ptrvec(%rip), %r9 # move pointer to r9

	cmpl $0, num(%rip)
	je end_vec_diff

loop_vec_diff:
	
	movl (%r9), %eax
	movl %eax, x(%rip) # move pointed value to x

	pushq %rcx

	call exists

	popq %rcx

	addl %eax, %esi

	addq $4, %r9
	loop loop_vec_diff

end_vec_diff:
	movl num(%rip), %eax
	subl %edi, %eax

	ret

# -----------------------------------------------------

exists:

	movl x(%rip), %esi
	movl $0, %eax # set eax (result) to 0
	movq num(%rip), %rcx # mov vec lenght to rcx
	movq ptrvec(%rip), %r8 # move vec pointer to r8

loop_exists:
	cmpl (%r8), %esi # check if poited value is equal to x
	je found
	
	addq $4, %r8
	loop loop_exists

found:
	incl %eax
	cmpl $2, %eax
	je ret_true
	
	addq $4, %r8
	loop loop_exists
	
ret_true:
	movl $1, %eax # return 1 (is duplicated)
	ret

ret_false:
	movl $0, %eax # return 0 (is not duplicated)
	ret

	
