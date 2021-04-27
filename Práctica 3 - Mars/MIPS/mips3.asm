.data # Ejemplode alineaciónde datosen memoria
half: .half 0xABCD
.align 6
espacio: .space 4
byte: .byte 0x11
palabra: .word 22
palabra1:.word 0x0000
vector:.word 1,3,5,8,10
.text
lui $s0, 0x4590# Carga inmediata de medias palabras
li $s1, 0x10010000# Carga  inmediata de palabras
lw $s2, palabra($0)# Cargamos el contenido de la direcciónde memoria en el registros 2
lb $s3, byte($0)# Cargamos el contenidode un byte en memoria
lb $s4, 0($s1)# Cargamose l registro$s4 con el valor del contenidode
# la posición de memoria= 0 + contenidodel registro$s1
lw $s5, 0($s1)# Cargamos el registro $s5 con el valor del contenido de
# la posición de memoria= 0 + contenido del registro $s1 sb $s1, byte($0)# Transferimos byte desde registroa memoria
sw $s1, palabra1($0)# Transferimos palabra desde registro a memoria