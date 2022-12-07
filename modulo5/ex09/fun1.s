.section .data
  .equ X_OFFSET_STRUCT_A, 4

.section .text
  .global fun1 # short fun1(structB *s)

#rdi s

fun1:
  
  movw X_OFFSET_STRUCT_A(%rdi), %ax 

ret
