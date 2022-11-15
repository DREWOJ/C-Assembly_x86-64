.section .text
	.global activate_bits # int activate_bits(int a, int left, int right)

#rdi a
#rsi left
#rdx right

activate_bits:

	movl $0xffffffff, %r8d # mask
	
	cmpl $31, %esi
	je next
	
	incl %esi # left + 1

	movb %sil, %cl # places left into cl
		
	shl %cl, %r8d # shifts bits to left
	
	orl %r8d, %edi # a |= mask

next:
	cmpl $0, %edx
	je end
	
	movl $0xffffffff, %r8d # mask 

	movb %dl, %cl # places right into cl

	shl %cl, %r8d # shifts bits to left
	notl %r8d # ~mask	
	orl %r8d, %edi # a |= mask
	
end:
	movl %edi, %eax # returns a
ret
