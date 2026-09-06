############################# Cabeçalho da Resposta ############################
.data

rsp:  .space 30
size: .word 30

.text

# Seu código abaixo:

	li a7,8
	la a0,rsp
	la t0,size
	lw a1,0(t0)
	ecall
	
	
	add a2, zero, a0 #a2=string[0]
	addi s0,zero,97 #a
	addi s1,zero,122 #z
	addi s2,zero,10 #barra n
	
	
FOR:	lb t1,0(a2)
	beq t1,s2,CONTINUA


	blt t1,s0,INCREMENTA
	blt s1,t1, INCREMENTA
	addi t1,t1,-32 #do upper case
	sb t1,0(a2)
	
INCREMENTA:
	addi a2,a2,1 #prox char MOD ender
	jal zero,FOR
	

CONTINUA:
	li a7,4
	ecall
	li a7,10
	ecall
	
	
	
	
	