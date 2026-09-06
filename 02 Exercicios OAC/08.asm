######################## Cabeçalho da resposta - não alterar ###################
.data 
str:	.space 32
nl:	    .word 10

.text
	li a7, 8
	la a0, str
	li a1, 30
	ecall
	
	lw  a1, nl
	jal limpa
	
	li a7, 4
	la a0, str
	ecall
	
	li a7, 10
	ecall
	
######################## Escreva a função limpa a seguir #######################	
limpa:
	lb t0,0(a0) #conteudo(o 1° char) do endereco da string
	
FOR: beq t0,a1,Return
	addi a0,a0,1 #proximo byte
	lb t0, 0(a0) #dereferencia, acessa conteudo
	jal zero,FOR

Return: sb zero,0(a0)
	jalr zero,ra,0