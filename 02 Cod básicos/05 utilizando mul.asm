.text
	li a7, 5 #lendo int e salvando em a0
	ecall
	
	li t0, 2 #t0 um registrador temporario, q está guardando 2
	
	#Bem o mul precisa de 3 registradores, o primeiro será onde a multiplicacao será guardada. E os outros dois possuem os valores
	#q serão multiplicados	
	mul a0, a0, t0 #Tendo basicamente a0 *= t0
	
	li a7, 1 #printa o q tá em a0
	ecall

	li a7, 10 #return 0
	ecall
	