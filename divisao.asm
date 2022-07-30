.data
.text

	addi $t0 , $zero , 30
	addi $t1 , $zero, 8
	
	#div $s0 , $t0, $t1 #o valor da divisão entre t0 e t1 sera armazenado em s0
	#div $s0 , $t0, 10
	div $t0, $t1 #dessa forma aequacao vvai para o registrador lo e o remainder para o registrador hi
	mflo $s0 #resultado da divisao sendo mandado para s0
	mfhi $s1
	# impressao
	li $v0, 1
	add $a0, $zero, $s0
	add $a0, $zero, $s1
	syscall
	
	