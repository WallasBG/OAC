.text
	li a7, 5
	ecall
	
	mv s0, a0 #s0 = a0
	
	li a7, 5
	ecall
	
	mv s1, a0 #s1 = a0
	
	sub a0, s0, s1 #a0 = s0 - s1
	
	li a7, 1
	ecall

	li a7, 10
	ecall