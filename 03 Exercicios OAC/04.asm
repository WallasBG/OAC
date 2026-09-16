################# Cabeçalho da Resposta - Não altere ###########################
.data
# segmento de dados
ehpar: 	 .string "Eh par"
ehimpar: .string "Eh impar"

#segmento de codigo
.text
# seu codigo aqui...

	la t1, ehpar
	la t2 ehimpar

	li a7, 5
	ecall
	
	add s0, a0, zero #s0 = n
	andi t0, s0, 1 #t0 = 0 ou 1
	
	beq t0, zero, PAR
	
	add a0, t2, zero
	li a7, 4
	ecall
	jal zero,CONTINUA
	
	
PAR:	add a0, t1, zero
	li a7, 4
	ecall
	
CONTINUA:li, a7, 10
	ecall