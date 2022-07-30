.data
	message: .ascii "e ai "
	userInput: .space 10
.text
	main:
		li $v0, 8
		la $a0, userInput
		li $a1,10
		syscall
		
		#displays e ai
		li $v0, 4
		la $a0, message
		syscall
		
		#displays the name
		li $v0, 4
		la $a0, userInput
		syscall
	
	#indica o fim de uma funcao	
	li $v0, 10
	syscall
	