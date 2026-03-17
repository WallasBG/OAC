.text
	li a7, 5
	ecall
	
	li t0, 2
	
	#O primeiro registrador guarda o resto da divisao do segundo reg pelo terciro reg	
	rem a0, a0, t0 #tendo a0 = a0 % t0
	
	li a7, 1
	ecall
	
	li a7, 10
	ecall