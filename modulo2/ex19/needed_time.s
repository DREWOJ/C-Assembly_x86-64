.section .data
	.global current
	.global desired
			
.section .text
	.global needed_time # int needed_time(void)
	

needed_time:
	movb current(%rip), %cl # place current into %cl
	movb desired(%rip), %dl # place desired into %dl

	cmpb %cl, %dl # compares %dl - %cl
	
	je same_temperature # case if %dl - %cl = 0
	
	jns increase_temp # case if %dl - %cl > 1
	
	js decrease_temp # case if %dl - %cl < 1
	
	
ret


same_temperature:

	movl $0, %eax # returns 0 seconds

ret


increase_temp:
	
	subb %cl, %dl # subtracts the two temp to obtain the diff
	
	movb $180, %al # places 180 into %al
	
	mulb %dl # multiplies %al with %dl
	
	movswl %ax, %eax # places the result in seconds into %eax
	
ret


decrease_temp:

	subb %cl, %dl # subtracts the two temp to obtain the diff
	
	neg %dl # in this case, the diff will be always negative so to multiply we need to neg it
	
	movb $240, %al # places 240 into %al
	
	mulb %dl # multiplies %al with %dl
	
	movswl %ax, %eax # places the result in seconds into %eax

ret
