#Ejemplo2 displaysdel periférico Digital LabSim
.text
main:
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
Bucle: 
li $t1, 0x01 # El segmento A derecho
sb $t1, 0($s0) 
li $t1, 0x00 # El segmento A izquierdo a 0
sb $t1, 0($s0) 
li $t1, 0x01 # El segmento A derecho
sb $t1, 0($s1) 
li $t1, 0x20 # El segmento F Izquierdo
sb $t1, 0($s1) 
li $t1, 0x10 # El segmento E Izquierdo
sb $t1, 0($s1) 
li $t1, 0x08 # El segmento D Izquierdo
sb $t1, 0($s1) 
li $t1, 0x00 # El segmento D Izqierod a 0
sb $t1, 0($s1) 
li $t1, 0x08 # El segmento D Derecho
sb $t1, 0($s0) 
li $t1, 0x04 # El segmento C Derecho
sb $t1, 0($s0) 
li $t1, 0x02 # El segmento B Derecho
sb $t1, 0($s0) 
j Bucle
li $v0, 10 # Fin programa
syscall