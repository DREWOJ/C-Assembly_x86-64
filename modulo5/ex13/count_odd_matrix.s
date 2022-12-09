.section .text
  .global count_odd_matrix # int count_odd_matrix(int **m, int y, int k)

#rdi **m
#rsi y (lines)
#rdx k (columns)

count_odd_matrix:
  movl $0, %eax       
  movl $0, %ecx
  movl $0, %r8d

loop: # lines loop
  
  cmpl %r8d, %esi
  je end

  movq (%rdi, %r8, 8), %rcx
  
  movl $0, %r9d

  incl %r8d

loop2: # columns loop 
  
  cmpl %r9d, %edx
  je loop

  movl (%rcx, %r9, 4), %r11d # get value of m[y][k]
  
  incl %r9d

  andl $1, %r11d
  
  cmpl $1, %r11d # checks if is odd
  je found

  jmp loop2 
    
found:
  incl %eax
  jmp loop2

end:
  ret


