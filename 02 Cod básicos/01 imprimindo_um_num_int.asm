.text			#Iniciar as instrucoes de assembly
		
	li a0,11 #O registrador a0 foi feito para guardar inteiros, aq guarda o 11
	
	li a7,1 #O registrador q guarda acoes, guarda 1, Impressao
	ecall	#Chama o SO, e faz a ação do a7, no caso imprimindo o num de a0
	
	li a7,10
	ecall
	
#Verifique q eh bom o ecall vim acompanhado do registrador a7