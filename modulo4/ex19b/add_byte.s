.section .text
  .global add_byte # void add_byte(char x, int* vec1, int* vec2)
  
#rdi x
#rsi vec1
#rdx vec2

add_byte:

  # prologue
	pushq %rbp          # save the original value of RBP 
  movq %rsp ,%rbp     # copy the current stack pointer to RBP
  
  movl (%rsi), %ecx # num of elements
  
  movl %ecx, (%rdx)
  
  addq $4, %rsi # skip first element

  addq $4, %rdx # increments pointer vec2

loop:
  
  cmpl $0, %ecx
  je end

  movl (%rsi), %r8d

  addb %dil, %r8b

  movl %r8d, (%rdx)

  addq $4, %rdx # increments pointer vec2
 
  addq $4, %rsi # increments pointer vec1

  decl %ecx # decrements number

  jmp loop

end:

  # epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
