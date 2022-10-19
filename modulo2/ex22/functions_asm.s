.section .data

	.global i
	.global j
	
.section .text
	.global f1_a # int f1_a(void)
	.global f2_a # int f2_a(void)
	.global f3_a # int f3_a(void)
	.global f4_a # int f4_a(void)

f1_a:

	movl i(%rip), %eax
	movl j(%rip), %ecx

	cmpl %eax, %ecx
	je equal

	addl %ecx, %eax
	subl $1, %eax

	jmp f1_a_end

equal:
	subl %ecx, %eax
	addl $1, %eax

f1_a_end:
	ret



#------------------------------

f2_a:

	movl i(%rip), %ecx
	movl j(%rip), %eax
	cltd

	cmpl %eax, %ecx
	jg greater

	incl %eax

	jmp f2_a_end

greater:
	decl %ecx
	cltd

f2_a_end:
	imull %ecx
	ret



#------------------------------

f3_a:

	movl i(%rip), %eax
	cltd
	movl j(%rip), %ecx


	cmpl %ecx, %eax
	jge greater_or_equal

	addl %eax, %ecx # h

	addl %ecx, %eax
	addl $2, %eax # g

	jmp f3_a_end

greater_or_equal:
	imull %ecx # h
	movl %eax, %ecx # store h in ecx
	
	movl i(%rip), %eax
	addl $1, %eax # g
	cltd

f3_a_end:
	idivl %ecx # result 
	ret




#------------------------------

f4_a:

	movl i(%rip), %eax

	addl j(%rip), %eax

	cmpl $10, %eax
	jg greater_10

	movl i(%rip), %eax
	cltd
	imull %eax
	cltd

	movl $4, %ecx
	imull %ecx

	jmp f4_a_end

greater_10:
	movl j(%rip), %eax
	cltd
	imull %eax
	cltd

	movl $3, %ecx
	idivl %ecx	

f4_a_end:
	ret