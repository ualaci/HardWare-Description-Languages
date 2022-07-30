.data

.macro finalizarPrograma # nome da macro

li $v0, 10 #prepara para encerrar o programa
syscall #executa uma instrução.
.end_macro #fim do macro.

.macro printf (%str) #nome da macro. %str é a string passada como parametro
.data
msg: .asciiz %str #define o valor da variavel msg.
.text
li $v0, 4 # prepara para imprimir uma string
la $a0, msg #salva o valor de msg na variavel $a0.
syscall #executa o comando, imprimindo a string
.end_macro #fim do macro.

.text
.globl principal

principal:
printf("ola Mundo 3!!\n")
finalizarPrograma