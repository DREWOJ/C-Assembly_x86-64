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
	movl j(%rip), %edx

	cmpl %eax, %edx
	je equal

	addl %edx, %eax
	subl $1, %eax

	jmp f1_a_end

equal:
	subl %edx, %eax
	addl $1, %eax

f1_a_end:
	ret



#------------------------------

f2_a:

	movl i(%rip), %edx
	movl j(%rip), %eax
	cltd


	cmpl %eax, %edx
	jle lower_or_equal

	incl %edx

	jmp f2_a_end

lower_or_equal:
	decl %eax
	cltd

f2_a_end:
	imull %edx
	ret



#------------------------------

f3_a:

	movl i(%rip), %eax
	cltd
	movl j(%rip), %edx


	cmpl %eax, %edx
	jl lower

	addl %eax, %edx # h

	addl %edx, %eax
	addl $i, %eax # g

	jmp f3_a_end

lower:
	imull %edx # h
	movl %eax, %edx # store h in edx
	
	movl i(%rip), %eax
	addl $1, %eax # g
	cltd

f3_a_end:
	idivl %edx # result
	ret




#------------------------------

f4_a:

	movl i(%rip), %eax

	addl j(%rip), %eax

	cmpl $10, %edx
	jle lower_or_equal_10

	movl i(%rip), %eax
	cltd
	imull %eax
	cltd

	movl $4, %ecx
	imull %ecx

	jmp f4_a_end

lower_or_equal_10:
	movl j(%rip), %eax
	cltd
	imull %eax
	cltd

	movl $3, %ecx
	idivl %ecx	

f4_a_end:
	imull %edx
	ret