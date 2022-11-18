.section .text
	.global changes # void changes(int *ptr)

# ptr = %rdi

changes:

	incq %rdi
	movb (%rdi), %al # 2nd byte to al

	cmpb $15, %al # check if 2nd byte is > 15
	jbe end # (unsigned)

	incq %rdi
	movb (%rdi), %al # 3rd byte to al

	notb %al # invert byte

	movb %al, (%rdi)
	
end:
ret
