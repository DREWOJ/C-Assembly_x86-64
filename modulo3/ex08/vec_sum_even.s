.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_sum_even # long vec_sum_even(void)
	.global test_even # long test_even(void)

vec_sum_even:
	movq $0, %rax # moves sum to rax to return
	movl num(%rip), %edi # store num in edi
	movq $0, %rsi # sum = 0 stored in 
	movq ptrvec(%rip), %rcx

while:
	cmpl $0, %edi # check if num is 0
	je end_vec_sum_even

	call test_even
	cmpq $0, %rax # check if rax is 0 (pointed value is odd)
	je do

	addq (%rcx), %rsi # adds pointed value to rsi (sum)

do:
	addq $8, %rcx # adds 8 (long size) to pointer
	decl %edi

	jmp while

end_vec_sum_even:
	movq %rsi, %rax # moves sum to rax to return
	ret



	
test_even:
	movq (%rcx), %rax # moves pointed value to rax
	cqto
	movq $2, %r9
	idivq %r9 # divides pointed value by 2

	cmpq $0, %rdx # checks if remainder is 0
	je is_even

	movq $0, %rax # return 1 if is even
	jmp end_test_even

is_even:
	movq $1, %rax # return 0 if is odd

end_test_even:
	ret
