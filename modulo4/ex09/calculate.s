.section .data
	diff:
		.int 0	
	product:
		.int 0	
	
.section .text
	.global calculate # int calculate(int a, int b)
	
# rdi a
# rsi b
	
calculate:

	pushq %rbp # prologue
	movq %rsp, %rbp
	
	movl %edi, %r8d # a
	movl %esi, %r9d # b

	subl %esi, %edi # diff
  
  movl %edi, diff(%rip)

	movl %r8d, %eax # product
	imull %esi

	movl %eax, product(%rip)
		
	movl $'*', %edi
	movl %r8d, %esi
	movl %r9d, %edx
	movl %eax, %ecx

	pushq %rsi # a
	pushq %rdx # b
	
	call print_result

	popq %rdx # b
	popq %rsi # a

	movq diff(%rip), %rcx # diff
	
	movq $'-', %rdi
	
	call print_result	

  movl diff(%rip), %r8d # diff
  movl product(%rip), %eax

 	subl %eax, %r8d # diff - product
	
	movl %r8d, %eax # result
	
	movq %rbp, %rsp # epilogue
	popq %rbp

ret
