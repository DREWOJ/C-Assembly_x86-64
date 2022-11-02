.section .data
	.global ptrsrc
	.global ptrdest
	.global num

.section .text
	.global sort_without_reps # int sort_without_reps(void)

sort_without_reps:

	movslq num(%rip), %rcx # mov vec lenght to rcx
	# check null vec
	movl $0, %eax
	cmpq $0, %rcx
	je end

	movq ptrsrc(%rip), %rax # move vec1 pointer to rax
	movq ptrdest(%rip), %rsi # move vec1 pointer to rsi

# fill second array
loop:
	movw (%rax), %di
	movw %di, (%rsi)

	addq $2, %rsi
	addq $2, %rax

loop loop

	movslq num(%rip), %rcx # mov vec lenght to rcx

	# if vec as only 1 element its already ordered
	movl $1, %eax
	cmpq $1, %rcx
	je end

	decq %rcx

	movq ptrdest(%rip), %rax # move vec1 pointer to rax
	movq ptrdest(%rip), %rsi # move vec1 pointer to rsi

loop1:
	pushq %rcx
	
	movslq num(%rip), %rcx # mov vec lenght to rcx
	decq %rcx

	loop2:
		movw (%rsi), %di
		addq $2, %rsi
		movw (%rsi), %r8w 

		cmpw %di, %r8w
		jg not_found

		movw %di, (%rsi)
		subq $2, %rsi
		movw %r8w, (%rsi)
		addq $2, %rsi

		not_found:
		
	loop loop2

	popq %rcx

	addq $2, %rax
	movq ptrdest(%rip), %rsi # move vec1 pointer to rsi
	
loop loop1


	movslq num(%rip), %rcx # mov vec lenght to rcx
	movl num(%rip), %eax
	decq %rcx
	
	movq ptrsrc(%rip), %rdx # move vec1 pointer to rdx
	movq ptrdest(%rip), %rsi # move vec1 pointer to rsi

	

loop3:
	addq $2, %rsi
	movw (%rsi), %di
	cmpw (%rdx), %di
	jne not_equal

	pushq %rcx
	
		

	loop4:
		movw (%rsi), %di
		addq $2, %rsi
		movw (%rsi), %r8w 


		movw %di, (%rsi)
		subq $2, %rsi
		movw %r8w, (%rsi)
		addq $2, %rsi

	loop loop4

	movw $0, (%rsi)
	decl %eax

	popq %rcx

	not_equal:

	addq $2, %rdx
	movq %rdx, %rsi # move rdx to rsi
	
loop loop3

	
end:
	ret
