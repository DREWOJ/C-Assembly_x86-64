.section .data
	.global ptr1
	
.section .text
	.global encrypt # encrypt(void)
	.global decrypt # decrypt(void)
	
encrypt:

	movl $0, %eax # number of changed characters
	movq ptr1(%rip), %rsi # store string pointer in rsi

while:
	cmpb $0, (%rsi) # if string ends jump to end
	je end

	cmpb $97, (%rsi) # if char equals 'a' 
	je if_found

	cmpb $32, (%rsi) # if char equals ' ' 
	je if_found

	addb $3, (%rsi) # increments 3 to found char
	incl %eax # increments number of changed characters
	incq %rsi # increments pointer
	jmp while


if_found:
	incq %rsi # increments pointer
	jmp while
	
	

decrypt:	
	
	movl $0, %eax
	movq ptr1(%rip), %rdx # store string pointer in rdx

loop:
	cmpb $0, (%rdx) # if string ends jump to end
	je end
	
	cmpb $97, (%rdx)
	je equal
	
	cmpb $32, (%rdx)
	je equal
	
	subb $3, (%rdx) # decrements 3 to found char
	incl %eax # increments number of changed characters
	incq %rdx # increments pointer
	
	jmp loop


equal:
	incq %rdx
	jmp loop

end:
	ret
