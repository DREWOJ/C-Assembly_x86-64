.section .data
	.global ptr1
	.global pt1
	.global num

.section .text
	.global swap # void swap()

swap:

	movq num(%rip), %rcx # mov vec lenght to rcx
	movq ptr1(%rip), %rax # move vec1 pointer to rax
	movq ptr2(%rip), %rdx # move vec2 pointer to rdx

	cmpq $0 ,%rcx
	je end

loop:
	movb (%rax), %sil
	movb (%rdx), %dil

	movb %sil, (%rdx)
	movb %dil, (%rax)
	
	addq $1, %rax
	addq $1, %rdx
	loop loop
end:
	ret

	
