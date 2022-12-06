.section .data
  .equ C_OFFSET, 0
  .equ I_OFFSET, 4
  .equ D_OFFSET, 8
  .equ J_OFFSET, 12


.section .text
  .global fill_s1 # void fill_s1(s1 *s, int vi, char vc, int vj, char vd)


#rdi s
#rsi vi,
#rdx vc
#rcx vj
#r8 vd


fill_s1:  

  movb %dl, C_OFFSET(%rdi)

  movl %esi, I_OFFSET(%rdi)

  movb %r8b, D_OFFSET(%rdi)

  movl %ecx, J_OFFSET(%rdi)

ret
