.section .data
  .equ UNIONB_OFFSET, 24

.section .text
  .global return_unionB_b # char return_unionB_b(structA **matrix, int i, int j)

# rdi matrix
# rsi i
# rdx j

return_unionB_b:
   
    movq $0, %r8
    movl $0, %eax

    shlq $5, %rdx # multiples j with 32 because of the size of structA 
    movq (%rdi, %rsi, 8), %r8 
    leaq (%r8, %rdx,), %rcx

    movb UNIONB_OFFSET(%rcx), %al # gets the char of unionb   

end:
ret
