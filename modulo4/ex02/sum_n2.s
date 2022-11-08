.section .text
	.global sum_n2 # long sum_n2(int n)


sum_n2:
	movq $0, %rax
	cmpl $0, %edi
	jle end

	movq %rdi, %rcx
	movq $0, %rsi	
	loop:
		movq %rcx, %rax
		imulq %rax
		addq %rax, %rsi
		loop loop

	movq %rsi, %rax	
end:
	ret
