.section .data
  .equ Z_OFFSET, 20
  
.section .text
  .global fun3 # short fun3(structB *s)

fun3:
    
  movq %rdi, %rax

  addq $Z_OFFSET, %rax

end:
ret
