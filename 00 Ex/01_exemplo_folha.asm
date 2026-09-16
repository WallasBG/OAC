.text

	li a7,5
	ecall		
	add t0, zero,a0 #t0 == g
	
	li a7,5
	ecall
	add a1, zero, a0 #a1 == h
	
	li a7,5
	ecall
	add a2, zero, a0 #a2 == i
	
	li a7,5
	ecall	
	add a3, zero, a0 #a3 == j
	
	add a0, zero, t0 #a0 == g
	
	##################
	addi t1, zero, 90
	addi s0, zero, 99	
	##################	
	
	jal ra, exemplo_folha
	
	li a7,1
	ecall
	
	li a7,10
	ecall
	
	
	
exemplo_folha:
	addi sp, sp,-12
	sw t0,0(sp)
	sw t1, 4(sp)
	sw s0, 8(sp)
#salvando o conteudo de t0,t1 e s0 na pilha, para usar os registradores aq no procedimento
#dps lembrar de recuperar os valores desses registradores

	add t0, a0,a1 #g+h
	add t1, a2,a3 #i+j
	sub s0, t0,t1
	add a0, zero, s0 #salvo no regs de retorno (convencao)
	
	lw t0, 0(sp)
	lw t1, 4(sp)
	lw s0, 8(sp)
	addi sp, sp, 12
#recuperando os valores antes da chamada da funcao, para os regs t0, t1 e s0
#e liberando espaco na pilha

	jalr zero,ra,0