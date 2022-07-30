.text

main:

li $s0, 10 # insere o valor 10 no reg $s0
li $s1, 5 #insere o valor 5 no reg $s1
add $s2,$s1,$s0 #soma o valor dos regs $s0 e $s1 e insere no $s2

la $a0, ($s2) #coloca o reg2 $s2 para ser impresso
li $v0,1 #comando de impressão inteiro na tela
syscall #efetua a chamada ao sistema

li $v0, 10 #comando de exit
syscall #efetua a chamada ao sistema