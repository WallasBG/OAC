.text
	li a7, 5
	ecall
	
	addi a0, a0, 1	#Passa dois registradores e um numero. Onde o primeiro guarda a soma do numero armazenado no segundo e o numero passado no terceiro parametro.
			#logo a0 = a0 + 1
			
	li a7, 1
	ecall


	li a7, 10
	ecall