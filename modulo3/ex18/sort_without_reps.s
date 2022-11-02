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


	movq ptrsrc(%rip), %r9

	call array_sort

	movslq num(%rip), %rcx # mov vec lenght to rcx
	movl $1, %eax
	
	movq ptrsrc(%rip), %rdx # move vec1 pointer to rdx
	movq ptrdest(%rip), %rsi # move vec1 pointer to rsi

	movw (%rdx), %di
	movw %di, (%rsi)

	cmpq $1, %rcx
	je end

	add $2, %rdx
	decq %rcx

loop2:

	movw (%rdx), %di
	cmpw (%rsi), %di
	je equal

	addq $2, %rsi
	movw %di, (%rsi)

	incl %eax

	equal:
		addq $2, %rdx 

loop loop2
	


	
end:
	ret
