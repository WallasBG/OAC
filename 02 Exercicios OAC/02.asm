.text
	addi a7,zero,5
	ecall		#a0 = int
	
	add t0,zero,a0	#t0 = a0
	
	addi a7,zero,5
	ecall		#a0 = int
	
	add a0,t0,a0	#a0 += t0
	
	addi a7,zero,1
	ecall		#print a0
	
	addi a7,zero,10
	ecall		#return 0