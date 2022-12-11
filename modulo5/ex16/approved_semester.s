.section .data
    .equ N_STUDENTS_OFFSET, 0
    .equ GRADES_OFFSET, 2
    
.section .text
    .global approved_semester #   int approved_semester(group *g)

# rdi g

approved_semester:

    movw N_STUDENTS_OFFSET(%rdi), %cx
    xor %eax, %eax

    testw %cx, %cx
    je end

    loop:
        pushq %rcx
        pushq %rax
        
        leaq GRADES_OFFSET(%rdi, %rcx, 2), %rax
        movw (%rax), %dx

        movw $16, %cx
        movw $1, %r8w
        
        xorw %si, %si

        loop2:

            movw %r8w, %r9w
            shlw %r8w
            andw %dx, %r9w

            addw %r9w, %si

        loop loop2

        popq %rax
        popq %rcx
        
        cmpw $10, %si
        jl next
        incl %eax

        next:

    loop loop  

   

end:
    ret 