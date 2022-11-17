.section .text
	.global vec_count_bits_one # int vec_count_bits_one(short *ptr, int num)

# ptr = %rdi
# num = %rsi

vec_count_bits_one:

    xor %eax, %eax
    cmpl $0, %esi
    jle end
    

    movslq %esi, %rcx # move num to rcx
    xor %edx, %edx # set edx to 0


    loop:

        pushq %rdi
        pushq %rdx
        pushq %rcx

        movw (%rdi), %di

        call count_bits_one

        popq %rcx
        popq %rdx

        addl %eax, %edx
        popq %rdi

        addq $2, %rdi
        
    loop loop
    
    movl %edx, %eax

end:
ret 
