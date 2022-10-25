.section .data
	.global ptr1
	
.section .text
	.global seven_count # int seven_count(void)
	
seven_count:
	
	movq ptr1(%rip), %rsi
	movl $0, %eax

loop:
	
	movb (%rsi), %dl
	
	incq %rsi
	
	cmpb $0, %dl
	
	je end
	
	cmpb $55, %dl
	
	je found
	
	jmp loop
	
found:
	incl %eax
	jmp loop

end:

ret
