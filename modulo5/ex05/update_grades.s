.section .data
  .equ GRADES_OFFSET,4


.section .text
  .global update_grades # void update_grades(Student *s, char *new_grades)

# rdi *s
# rsi *new_grades 


update_grades:
  movq $0, %rdx
  addq $GRADES_OFFSET, %rdi
  
loop:
  cmpq $5, %rdx
  je end

  movl (%rsi, %rdx,4), %eax
  movl %eax, (%rdi, %rdx, 4)
    
  incq %rdx

jmp loop

end:
ret
