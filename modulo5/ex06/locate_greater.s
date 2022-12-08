.section .data
  .equ GRADES_OFFSET,4


.section .text
  .global locate_greater # int locate_greater(Student *s, int minimum, int *greater_grades)

# rdi s
# rsi minimum
# rdx greater_grades 


locate_greater:
    movq $5, %rcx
    addq $GRADES_OFFSET, %rdi
    xor %eax, %eax
  
loop:
  
    movl (%rdi), %r8d
    cmpl %esi, %r8d
    jle next

    movl %r8d, (%rdx)
    incl %eax
    addq $4, %rdx

    next:

    addq $4, %rdi

loop loop

end:
ret
