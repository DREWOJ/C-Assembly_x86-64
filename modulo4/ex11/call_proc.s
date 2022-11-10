.section .data
	diff:
		.int 0	
	product:
		.int 0	
	
.section .text
	.global call_proc # int call_proc(int a, int b, short c, char d)
	
# rdi a
# rsi b
# rdx c
# rcx d
	
call_proc:
	

ret
