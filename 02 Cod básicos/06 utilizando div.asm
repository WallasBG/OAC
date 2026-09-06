.text
	li a7, 5
	ecall
	
	li t0, 10
	
	#Guarda no primeiro registrador, o resultado da divisao do primeiro reg pelo terceiro reg
	div a0, a0, t0 #Temos a0 /= t0
	
	li a7, 1
	ecall

	li a7, 10
	ecall
	