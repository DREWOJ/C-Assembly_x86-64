.section .data
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto # str_copy_porto(void)
	
str_copy_porto:
	movq ptr1(%rip), %rax
	movq ptr2(%rip), %rsi

do:
	movb (%rax), %dl

	# check char is null
	cmpb $0, %dl
	je end

	# check if char is 'o'
	cmpb $111, %dl
	je found_char

	movb %dl, (%rsi)

	jmp while

found_char:
	# exchange 'o' by 'u' 
	movb $117, (%rsi)

while: 
	# incremente each pointer
	incq %rax
	incq %rsi

	jmp do

end:
	# set last char to null
	movb $0, (%rsi)

	ret
