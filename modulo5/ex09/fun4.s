.section .data
  .equ B_OFFSET, 8
  .equ X_OFFSET_STRUCT_A, 4

.section .text
  .global fun4 # short fun4 (structB *s)

#rdi s

fun4:
  
  movw B_OFFSET(%rdi), %ax

  movw X_OFFSET_STRUCT_A(%rax), %ax

ret
