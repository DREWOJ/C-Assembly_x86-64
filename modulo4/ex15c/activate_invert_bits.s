.section .text
	.global activate_invert_bits # int activate_invert_bits(int a, int left, int right)

#rdi a
#rsi left
#rdx right

activate_invert_bits:
		
	call activate_bits
	
	notl %eax

ret
