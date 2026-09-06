.text
	li a7, 5
	ecall
	
	add t0,a0,zero
	add t1,t1,zero
	
FOR:	beq t0,zero,CONTINUA
	andi t2,t0,1
	add t1,t1,t2
	srli t0,t0,1
	jal zero,FOR
	
CONTINUA:
	add a0,t1,zero
	
	li a7,1
	ecall
	
	li a7,10
	ecall