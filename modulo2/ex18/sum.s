.section .data
	.equ A, 2
	.equ B, 2

	i:
		.int 0

	.global num
	
.section .text
	.global sum # int sum(void)
	
sum:
	movl $0, %ecx # ecx to 0

	jmp while

while:
	incl i(%rip) # incrementes i value
	movl i(%rip), %eax # copys i value to eax
	cltd
	imull %eax # i square

	movl %eax, %edi # copys i square to edi	

	movl A(%rip), %eax # copys A value to eax
	cltd
	imull %eax # A square
	cltd # converts the signed long in % eax to the signed double long in %edx : %eax

	movl B(%rip), %esi # copys B to esi
	idivl %esi # divides by B
	cltd

	imull %edi # multiplies by i square 

	addl %eax, %ecx # adds eax to ecx

	movl num(%rip), %edi # num to edi

	cmpl %edi, i(%rip) # compares edi with i
	jne while # if edi not equal to i, jumps to while

	movl %ecx, %eax # copys ecx to eax (if while ends return value is ok)
ret
