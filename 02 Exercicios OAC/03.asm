.text

	li a7, 5
	ecall
	add s0, a0, zero #s0 = n
	
	addi t0,t0,0 #t0 = 0
	addi t1,t1,0 #t1 = 0
	
FOR:	beq s0, t0, continua

	li a7, 5
	ecall
	
	add t1, t1, a0 #t1 += a0
	addi t0,t0,1 #t++
	jal zero, FOR

	
	
	
continua:addi a0, t1, 0 #a0 = t1
	li a7, 1	
	ecall
	
	li a7, 10
	ecall
