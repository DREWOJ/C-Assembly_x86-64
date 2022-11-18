.section .text
	.global changes_vec # void changes_vec(int *ptrvec, int num)

# ptrvec = %rdi
# num = %rsi

changes_vec:

	movq %rsi, %rcx
	testq %rcx, %rcx
	je end

	movq %rdi, %rsi

	loop:

		movq %rsi, %rdi
		call changes
		addq $4, %rsi 

	loop loop
	
end:
ret
