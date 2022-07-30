.data	#diretiva utilizada para decçaracao de variaveis e constantes.
msg1: .asciiz "Digite um numero: "
msg2: .asciiz "Digite outro numero: "
msg3: .asciiz "Resultado:"

.text #diretiva usada pra conter o codigo em si.
li $v0, 4 #imprime uma string
la $a0, msg1 #a0 = msg
syscall

li $v0, 5 # insere o valor 10 no reg $v0
syscall
move $s0, $v0

li $v0,4
la $a0, msg2
syscall

li $v0, 5
syscall
move $s1, $v0

mul $s2, $s0, $s1

li $v0,4
la $a0, msg3
syscall

li $v0, 1
la $a0, ($s2)
syscall

li $v0, 10 #prepara para encerrar o programa
syscall