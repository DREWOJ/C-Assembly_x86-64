.section .data
  .equ Z_OFFSET, 20

.section .text
  .global fun2 # short fun2(structB *s)


fun2:
  
  movw Z_OFFSET(%rdi), %ax

ret
