.section .data
x:
	.int 0
y:
	.int 0
x1:
	.short 0
x2:
	.int 0

.section .text
	.global incr # int incr(short *p1, char val)
	.global call_incr # int call_incr(short w)

# p1 %rdi
# val %rsi

incr:
	movswl (%rdi), %eax # *p1 into eax
	movl %eax, x(%rip) # eax into x
	movsbl %sil, %esi
	addl %esi, %eax # esi into eax
	movl %eax, y(%rip) # eax into y
	movw %ax, (%rdi)  # ax into *p1
	movl x(%rip), %eax # x into eax

ret	

call_incr:

	movw %di, %ax
	addw $3, %ax
	movw %ax, x1(%rip)

	leaq x1(%rip), %rdi
	movq $0xC3, %rsi

	call incr

	movl %eax, x2(%rip)

	movswl x1(%rip), %esi

	addl %esi, %eax

	
ret
