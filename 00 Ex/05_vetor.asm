.data
	A:	.word 1,2,3,4,5,6,7,8,9,1010,113,1562,13,14,15,1096,17,1878,19,2870
	size:	.word 20

.text
#A[i+g] = g + A[i] - A[0]
	#i==a0 , g==a1
	
	li a7,5
	ecall
	add t0,a0,zero #t0 == i
	
	li a7,5
	ecall
	add a1, a0,zero #a1 == g
	
	add a0, t0,zero #a0 == i
	
	la t0, A #t0 == A
	lw t1, 0(t0) #t1 = A[0]
	
	slli t2,a0,2 #i*4
	add t2, t0,t2 #i*4 + A
	lw t2, 0(t2) #t2 = A[i]
	
	sub t1, t2,t1 #t1 = A[i] - A[0]
	add t1, t1,a1 #t1 += g
	 
	add t3,a0,a1 #i+g
	slli t3,t3,2 #(i+g)*4
	add t3, t3,t0 #A + (i+g)*4
	sw t1,0(t3) #A[i+g] = A[i] - A[0] + g
	
	li a7,10
	ecall