.section .data
    .equ N_STUDENTS_OFFSET, 0
    .equ GRADES_OFFSET, 8
    
.section .text
    .global approved_semester #   int approved_semester(group *g)

# rdi g

approved_semester:

    movw N_STUDENTS_OFFSET(%rdi), %cx
    xor %rax, %rax

    testw %cx, %cx
    je end

    movq GRADES_OFFSET(%rdi), %rdi

    loop:
        pushq %rcx
        pushq %rax
        
        movw (%rdi), %dx

        movw $16, %cx
        movw $1, %r8w
        
        xorw %si, %si

        loop2:

            movw %r8w, %r9w
            andw %dx, %r9w

            shrw %dx
            addw %r9w, %si

        loop loop2

        addq $2, %rdi

        popq %rax
        popq %rcx
        
        cmpw $10, %si
        jl next
        incl %eax

        next:

    loop loop  

   

end:
    ret