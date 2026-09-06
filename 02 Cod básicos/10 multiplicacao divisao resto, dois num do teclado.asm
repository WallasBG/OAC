#mul div rem
.text

	li a7, 5
	ecall
	
	mv s0, a0
	
	li a7, 5
	ecall
	
	mv s1, a0
	
	li a0, 10
	li a7, 11
	ecall
	
	mul s3, s0, s1
	div s4, s0, s1
	rem s5, s0, s1
	
	mv a0, s3
	li a7, 1
	ecall
	
	li a0, 10 #colocando 10 MANUALMENTE no registrador a0.
	li a7, 11 #printa um caracter presente no reg a0, logo o 10, q na ascii é quebra de linha
	ecall
	
	mv a0, s4
	li a7, 1
	ecall
	
	li a0, 10
	li a7, 11
	ecall
	
	mv a0, s5
	li a7, 1
	ecall	
	
	li a7, 10
	ecall