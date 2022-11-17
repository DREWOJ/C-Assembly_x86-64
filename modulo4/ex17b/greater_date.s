.section .data
	.equ MASK_MONTH, 0x000000ff
	.equ MASK_YEAR, 0x00ffff00
	.equ MASK_DAY, 0xff000000

.section .text
	.global greater_date # unsigned int greater_date(unsigned int date1, unsigned int date2)


#rdi date1
#rsi date2


greater_date:

	movl %edi, %eax # default return

	movl %edi, %edx # date1
	movl %esi, %ecx # date2
	
	andl $MASK_YEAR, %edx
	andl $MASK_YEAR, %ecx

	cmpl %ecx, %edx
	ja end

	cmpl %edx, %ecx
	ja date2

	movl %edi, %edx # date1
	movl %esi, %ecx # date2

	andl $MASK_MONTH, %edx
	andl $MASK_MONTH, %ecx
	
	cmpl %ecx, %edx
	ja end

	cmpl %edx, %ecx
	ja date2

	movl %edi, %edx # date1
	movl %esi, %ecx # date2

	andl $MASK_DAY, %edx
	andl $MASK_DAY, %ecx

	cmpl %ecx, %edx
	ja end

	cmpl %edx, %ecx
	ja date2
		
	jmp end
date2:
	movl %esi, %eax # date2
	jmp end

end:
ret
