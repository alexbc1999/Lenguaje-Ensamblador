#Ejemplo displaysdel periférico Digital LabSim
.text
main:
li $s0, 0xFFFF0010 # carga dirección base del displayderecho
li $s1, 0xFFFF0011 # carga dirección base del displayizquierdo
li $t1, 0x3F # El bit 0 activa el segmento A
sb $t1, 0($s0) # almacena en dirección del displayderecho el valor de $t1
li $t1, 0x7F # El punto decimal
sb $t1, 0($s1) # almacena en dirección del displayizquierdo el valor de $t1
li $v0, 10 # Fin programa
syscall