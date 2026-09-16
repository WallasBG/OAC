#fac(n) = n * (n-1) * (n-2) * ... * 1


.text
	li a7,5
	ecall
	
	jal ra, factorial
	
	li a7, 1
	ecall
	
	li a7, 10
	ecall
	

################
factorial: #para n>=0

	slti t0,a0,2 #1 se n < 2
	beq t0,zero,L1 #n>=2
	
	addi a0,zero,1
	jalr zero, ra,0
	
L1:	addi sp,sp,-8
	sw ra, 0(sp)
	sw a0, 4(sp)
	
	addi a0,a0,-1
	jal ra,factorial
	
	lw ra, 0(sp)
	lw t0, 4(sp)
	mul a0,a0,t0
	addi sp,sp,8
	
	jalr zero, ra,0
	
	
