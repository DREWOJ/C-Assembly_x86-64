.section .data
	.global ptr1
	.global ptr2
	.global ptr3

.section .text
	.global str_cat # void str_cat(void)

str_cat:
	movq ptr1(%rip), %rsi # store string pointer in rsi
	movq ptr3(%rip), %rax # store string pointer in rax


while_ptr1_not_null:
	cmpb $0, (%rsi) # if string ends jump to next
	je next

	movb (%rsi), %dl
	movb %dl, (%rax)
	
	incq %rsi # increments pointer rsi
	incq %rax # increments pointer rax

	jmp while_ptr1_not_null

next:
	movq ptr2(%rip), %rsi # store string pointer in rsi

while_ptr2_not_null:
	cmpb $0, (%rsi) # if string ends jump to end
	je end

	movb (%rsi), %dl
	movb %dl, (%rax)
	
	incq %rsi # increments pointer rsi
	incq %rax # increments pointer rax

	jmp while_ptr2_not_null

	
end:
	movb $0, (%rax) # last char of string

	ret
