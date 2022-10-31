.section .data
	.global ptrvec
	.global num

.section .text
	.global array_sort # void array_sort(void) 

array_sort:

	movslq num(%rip), %rcx # mov vec lenght to rcx
	movq ptrvec(%rip), %rax # move vec1 pointer to rax
	movq ptrvec(%rip), %rsi # move vec1 pointer to rsi
	
	cmpq $1, %rcx
	je end

	cmpq $0, %rcx
	je end

	decq %rcx

loop1:
	pushq %rcx
	
	movslq num(%rip), %rcx # mov vec lenght to rcx
	decq %rcx

	loop2:
		movw (%rsi), %di
		addq $2, %rsi
		movw (%rsi), %r8w 

		cmpw %di, %r8w
		jl not_found

		movw %di, (%rsi)
		subq $2, %rsi
		movw %r8w, (%rsi)
		addq $2, %rsi

		not_found:
		
		loop loop2

	popq %rcx

	addq $2, %rax
	movq ptrvec(%rip), %rsi # move vec1 pointer to rsi
	
	loop loop1
end:
	ret

	
