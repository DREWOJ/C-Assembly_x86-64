.section .data
	.equ A, 4
	.equ B, 5

	i:
		.int 0

	.global num
	
.section .text
	.global sum # int sum(void)
	
sum:
	movl num(%rip), %edi # copy num to edi

	movl $0, %esi # copy 0 to esi (result)

while:
	incl i(%rip) # incrementes i value
	movl i(%rip), %eax # copys i value to eax
	cltd

	imull %eax # i square
	cltd

	movl $A, %ecx
	imull %ecx # multiplies by A
	cltd

	movl $A, %ecx
	imull %ecx # multiplies by A
	cltd

	movl $B, %ecx
	idivl %ecx # divides by B

	addl %eax, %esi # add eax to esi (result)
		
	cmpl %edi, i(%rip) # compares edi (num) with i
	jne while # if edi (num) not equal to i, jumps to while

	movl %esi, %eax # copy esi (result) to eax

ret
