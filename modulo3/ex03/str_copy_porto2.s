.section .data
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto2 # str_copy_porto2(void)
	
str_copy_porto2:
	movq ptr1(%rip), %rax
	movq ptr2(%rip), %rsi

do:
	movb (%rax), %dl

	# check char is null
	cmpb $0, %dl
	je end

	# check if char is 'o'
	cmpb $111, %dl
	je found_char_lower_case

	# check if char is 'O'
	cmpb $79, %dl
	je found_char_upper_case

	movb %dl, (%rsi)

	jmp while

found_char_lower_case:
	# exchange 'o' by 'u' 
	movb $117, (%rsi)

	jmp while

found_char_upper_case:
	# exchange 'O' by 'U' 
	movb $85, (%rsi)

while: 
	# incremente each pointer
	incq %rax
	incq %rsi

	jmp do

end:
	# set last char to null
	movb $0, (%rsi)

	ret
