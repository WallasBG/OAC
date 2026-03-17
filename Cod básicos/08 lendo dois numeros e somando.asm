#Lendo dois numeros e somando.

.text 
	li a7, 5
	ecall #le um int
	
	#move para o primeiro reg o conteudo do segundo, na realidade realiza uma copia, pois o segundo reg nao perde seu conteudo
	mv s0, a0 #temos s0 = a0
	
	li a7, 5
	ecall #le outro int
	
	mv s1, a0 #s1 = a0
	
	add a0, s0, s1 #a0 = s0 + s1
	#bom ve a diff entre add e addi????
	
	#Bem o addi, faz a soma de uma valor imediato, que vc insere diretamente no codigo
	#o add, utiliza dois registradores, para fazer a soma...
	
	li a7, 1
	ecall
	
	li a7, 10 #return 0
	ecall