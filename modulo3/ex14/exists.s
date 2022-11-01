.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global exists # int exists(void)
	.global vec_diff # int vec_diff(void)
	
exists:
	movl $0, %eax
	movl x(%rip), %edi
	movslq num(%rip), %rcx
	movq ptrvec(%rip), %rdx

loop_exists:
	cmpl (%rdx), %edi
	jne not_equal

	incl %eax
	cmpl $2, %eax
	je ret_true

not_equal:
	addq $4, %rdx
	loop loop_exists
	
	movl $0, %eax
	ret

ret_true:
	movl $1, %eax
	ret

# ------------------------------------

vec_diff:

	movslq num(%rip), %rcx
	movq ptrvec(%rip), %r8
	movl $0, %esi


	cmpq $0, %rcx
	je end


loop:
	movl (%r8), %r9d
	movl %r9d, x(%rip)

	movq %rcx, %r9

	call exists
	
	movq %r9, %rcx

	addl %eax, %esi

	addq $4, %r8

	loop loop
	
end:
	movl num(%rip), %eax
	subl %esi, %eax
	ret
