.data # Desplazamientos lógicos
numero: .word 0xFFFFFFFA
.text
main: lw $t0,numero($0)
sra $t1,$t0,2