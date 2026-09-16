#n + (n-1) + … + 2 + 1

.text
	li,a7,5
	ecall #a0 == n
	
	jal ra,soma_rec
	
	li, a7,1
	ecall
	
	li, a7,10
	ecall
	
	
####################	
soma_rec:	
	slti t0, a0, 1 #set 1 se a0 < 1
	beq t0, zero, L1 #se t0 == 0, entao a0 >= 1
	
	#a0<1 --> a0 == 0 ou algum num negativo, se n negativo
	add a0,zero,zero #return 0
	jalr zero,ra,0
	
	
	
L1:	#a0 >= 1
	addi sp,sp,-8
	sw ra, 4(sp)
	sw a0, 0(sp)
	addi a0,a0,-1
	jal ra, soma_rec
	
	lw ra, 4(sp)
	lw t0, 0(sp)
	addi sp,sp,8
	add a0, a0,t0
	jalr zero,ra,0
	
	
	