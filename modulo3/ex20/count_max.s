.section .data
	.global ptrvec
	.global num

.section .text
	.global count_max # int count_max(void)

count_max:

	movq num(%rip), %rcx # mov vec lenght to rcx
	movq ptrvec(%rip), %rdx # move vec pointer to rdx
	movl $0, %eax # set eax (result) to 0

	cmpq $2 ,%rcx # check null vec
	jle end

	subq $2, %rcx

loop:
	movq %rdx, %rsi
	movl 4(%rsi), %esi
	movq %rdx, %rdi
	movl 8(%rdi), %edi


	cmpl (%rdx), %esi
	jle not_found

	cmpl %esi, %edi
	jge not_found

	incl %eax

not_found:

	addq $4, %rdx
	loop loop
end:
	ret

	
