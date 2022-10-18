.section .data

	.global num
	
.section .text
	.global check_num # char check_num(void)
	
check_num:

	movl num(%rip), %eax # copy num to eax
	cltd

	movl $2, %ecx # copy 2 to ecx


	cmpl $0, %eax # compares eax with 0

	js is_negative # if eax - 0 = is negative jumps to is_negative_odd


	# if is not negative
	
	idivl %ecx  # devides eax (num) by ecx (2)

	cmpl $0, %edx # compares edx (remainder) with 0
	je is_positive_even # if edx - 0 = 0 jumps to is_positive_even

	movl $7, %eax # copy 7 to eax

	jmp end

is_negative:

	idivl %ecx  # devides eax (num) by ecx (2)

	cmpl $0, %edx # compares edx (remainder) with 0
	je is_negative_even # if edx - 0 = 0 jumps to is_negative_even

	movl $5, %eax # copy 5 to eax

	jmp end

is_positive_even:
	movl $6, %eax # copy 6 to eax
	jmp end

is_negative_even:
	movl $4, %eax # copy 4 to eax
	jmp end

end:
	ret
