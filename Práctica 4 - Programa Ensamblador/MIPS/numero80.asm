#Ejemplo displaysdel perif�rico Digital LabSim
.text
main:
li $s0, 0xFFFF0010 # carga direcci�n base del displayderecho
li $s1, 0xFFFF0011 # carga direcci�n base del displayizquierdo
li $t1, 0x3F # El bit 0 activa el segmento A
sb $t1, 0($s0) # almacena en direcci�n del displayderecho el valor de $t1
li $t1, 0x7F # El punto decimal
sb $t1, 0($s1) # almacena en direcci�n del displayizquierdo el valor de $t1
li $v0, 10 # Fin programa
syscall