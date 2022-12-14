.section .text
	.global greatest # int greatest(int a, int b, int c, int d)
	
# a %rdi
# b %rsi
# c %rdx
# d %rcx

greatest:

	# prologue
	pushq %rbp             # save the original value of RBP 
    movq %rsp ,%rbp     # copy the current stack pointer to RBP

	movq %rdi, %rax
	
	# checks if a > b
	
	cmpl %eax, %esi
	jl check_c
	
	movq %rsi, %rax
	
check_c:

	# checks if b > c
	cmpl %eax, %edx
	jl check_d
	
	movq %rdx, %rax
	
check_d:

	# checks if c > d
	cmpl %eax, %ecx
	jl end
	
	movq %rcx, %rax



end:
	# epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value
	ret
