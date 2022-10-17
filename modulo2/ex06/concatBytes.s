.section .data
	.global byte1
	.global byte2
	
.section .text
	.global concatBytes # short concatBytes(void)
	
concatBytes:
	
	movb byte2(%rip), %ah
	movb byte1(%rip), %al
	
ret
