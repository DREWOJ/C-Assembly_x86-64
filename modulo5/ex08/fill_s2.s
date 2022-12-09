.section .data
  .equ C_OFFSET, 0
  .equ W_OFFSET, 4
  .equ J_OFFSET, 12


.section .text
  .global fill_s2 # void fill_s2(s2 *s, short vw[3], int vj, char vc[3])


# rdi s
# rsi vw
# rdx vj
# rcx vc


fill_s2:  

  movl %edx, J_OFFSET(%rdi)

  xor %r8, %r8

  loop:

    leaq (%rcx, %r8), %rax
    leaq C_OFFSET(%rdi, %r8), %r9
    movb (%rax), %al
    movb %al, (%r9)

    leaq (%rsi, %r8, 2), %rax
    leaq W_OFFSET(%rdi, %r8, 2), %r9
    movw (%rax), %ax
    movw %ax, (%r9)

    incq %r8
    cmpq $3, %r8
    jne loop

ret
