.section .data
	diff:
		.int 0	
	product:
		.int 0	
	
.section .text
	.global proc # void proc(int x1, int *p1, int x2, int *p2, short x3, short *p3, char x4, char *p4)
	
# rdi x1
# rsi *p1
# rdx x2
# rcx *p2
# r8 x3
# r9 *p3
# ahn? x4
# ahn? *p4
	
proc:
	
	

ret
