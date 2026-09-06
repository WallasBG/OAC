.text
	li a7,5
	ecall
	add s0,a0,zero
	
	li a7,5
	ecall
	add s1,a0,zero
	
	li a7,5
	ecall
	
	mul a0,a0,s1
	add a0,a0,s0
	
	li a7,1
	ecall
	
	li a7,10
	ecall
	