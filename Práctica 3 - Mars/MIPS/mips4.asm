.data # Operaciones con números y almacenado de palabras en memoria
numero1: .word 0x80000000
numero2: .word 1
.text
main: lw $t0,numero1($0)
lw $t1,numero2($0)
subi $t2,$t0,1
addiu $t3,$t0,3
sw $t2,numero2+4($0)
sw $t3,numero2+8($0)