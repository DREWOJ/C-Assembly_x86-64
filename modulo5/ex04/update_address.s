.section .data
  .equ ADDRESS_OFFSET,84



.section .text
  .global update_address # void update_address(Student *s, char *new_address)


# rdi *s
# rsi *new_address 


update_address:
  
    addq $ADDRESS_OFFSET, %rdi

loop:

    movb (%rsi), %al

    testb %al, %al
    je end
  
    movb %al, (%rdi)

    incq %rdi
    incq %rsi

jmp loop

end:

    movb $0, %al
    movb %al, (%rdi)

    ret
