.section .data
	.global code
	.global currentSalary
	
.section .text
	.global new_salary # short new_salary
	
new_salary:
	
	movw code(%rip), %cx #places code into %cx
	movw currentSalary(%rip), %ax #places currentSalary into %ax
	
	cmpw $20, %cx # compares %cx with the 20 code
	
	je manager # jumps to manager if true
	
	cmpw $21, %cx # compares %cx with the 21 code
	
	je engineer # jumps to engineer if true
	
	cmpw $22, %cx # compares %cx with the 22 code
	
	je technician # jumps to technician if true
	
	addw $150, %ax # adds $150 to the %ax (currentSalary) if any code was matched
	
ret

manager:

	addw $400, %ax # adds $400 to the %ax (currentSalary)

ret


engineer:

	addw $300, %ax # adds $300 to the %ax (currentSalary)

ret

technician:

	addw $200, %ax # adds $200 to the %ax (currentSalary)
	
ret
