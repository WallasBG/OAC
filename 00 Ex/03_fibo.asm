.text
	li a7,5
	ecall
	
	jal ra,fibonacci	
	
	li a7,1
	ecall
	
	li a7,10
	ecall
	
################### para entradas n>=0, pfv usuario
fibonacci:
	slti t0,a0,2 #n<2
	beq t0,zero,L2 #n>=2
	
	beq a0,zero,L0 #n==0
	
	
	#n==1
	addi a0,zero,1
	jalr zero,ra,0
	
	
	
L0:#n==0
	addi a0,zero,0
	jalr zero,ra,0
	
			
L2:#n>=2
	addi sp,sp,-12 #para salvar ra,a0,e o resultado da chamada para n-1
	sw ra,8(sp)
	sw a0,4(sp)
	#sw zero,0(sp)
	
	addi a0,a0,-1
	jal ra,fibonacci
	
	sw a0,0(sp) #salvo o resultado da chamada de n-1 na pilha
	lw a0,4(sp) #carrego o valor original de n
	addi a0,a0,-2
	jal ra,fibonacci

	lw t0, 0(sp)
	add a0,t0,a0 #nao carrego f(n-1) + f(n-2) na pilha, pois esse resultado precisa retorna para a chamada anterior.
	#dai, nao tem necessidade pois vamos liberar espaco na pilha e retornar a chamada anterior
	
	lw ra,8(sp)
	addi sp,sp,12	
	jalr zero,ra,0