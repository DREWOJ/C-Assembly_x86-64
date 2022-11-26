.section .text
  .global distance # int distance(char* a, char* b)

#rdi a
#rsi b

distance:

  # prologue
	pushq %rbp          # save the original value of RBP 
  movq %rsp ,%rbp     # copy the current stack pointer to RBP

  movl $-1, %eax # default return
  movl $0, %ecx  # number of diff chars 

loop:
  
  cmpb $0, (%rdi)
  je return1

  cmpb $0, (%rsi)
  je return2

  movb (%rdi), %r8b # char from a
  movb (%rsi), %r9b # char from b

  addq $1, %rdi
  addq $1, %rsi
  
  cmpb %r8b, %r9b # checks if chars are equal
  jne diff

  jmp loop

diff:

  incl %ecx # increments number of diff
  jmp loop

return1:
  
  cmpb $0, (%rsi) # checks if both strings ended
  jne end
  
  movl %ecx, %eax

  jmp end

return2:

  cmpb $0, (%rdi) # checks if both strings ended
  jne end

  movl %ecx, %eax
  
  jmp end

end:

  # epilogue
    movq %rbp , %rsp     # retrieve the original RSP value
    popq %rbp            # restore the original RBP value

ret
