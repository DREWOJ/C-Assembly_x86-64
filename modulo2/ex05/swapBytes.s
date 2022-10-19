.section .data
	.global s
	
.section .text
	.global swapBytes # short swapBytes(void)
	
swapBytes:
	movw s(%rip), %dx # place s in %dx
	
	movb %dh, %cl # place %dh in %cl
	movb %dl, %ch #place %dl in %ch
		
	addb %cl, %cl # adds %cl to %cl to obtain twice the value of the previous most significant byte
	
	movw %cx, %ax #places %cx in %ax
ret
