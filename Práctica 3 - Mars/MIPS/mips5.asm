.data # Operaciones lógicas
numero: .word 0x12345678
.space 4
.text
main: lw $t0,numero($0)
andi $t1,$t0,0xf0f0f0f0
sw $t1,numero+4($0)