.section .data

	.global A
	.global B

	
.section .text
	.global isMultiple # char isMultiple(void)
	
isMultiple:

	cmpl $0, A(%rip) # checks if A is 0
	je jmp_null_argument
	cmpl $0, B(%rip) # checks if B is 0
	je jmp_null_argument


	movl A(%rip), %eax # place A into eax (dividend)
	cltd
	movl B(%rip), %ecx # place A into ecx
	idivl %ecx 

	movl $0, %eax # set eax to 0

	cmp $0, %edx # checks if edx (remainder) is 0

	movl $1, %edi # set edi to 1

	cmove %edi, %eax # if edx was 0 then copy edi to eax
	
ret 

jmp_null_argument:
	movl $0, %eax # set eax to 0
	
ret
