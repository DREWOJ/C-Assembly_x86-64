.section .data
	.global s
	
.section .text
	.global swapBytes # short swapBytes(void)
	
swapBytes:
	movw s(%rip), %dx #place s in dx
	
	movb %dh, %cl
	movb %dl, %ch
	movb %cl, %dl
	movb %ch, %dh
	
	addb %dl, %dl
	
	movw %dx, %ax
ret
