.data
 msg01: .asciiz "Introduce el tamaño del vector: "
 msg02: .asciiz "Introducir componente de vector: "
 msg03: .asciiz "La media aritmética es: "
 msg04: .asciiz "hola"
 msg05: .asciiz "---ERROR --- La media aritmética debe ser positiva"
 msg06: .asciiz "---ERROR --- La media aritmetica debe ser menor que 99"
 msg07: .asciiz  " El factorial es: "
 msg08: .asciiz " La distancia euclídea es: "
 msg09: .asciiz "\nPulsa para continuar... "
 msg10: .asciiz "\n--- AVISO --- El tamañao del vector es superior a 4 y no se puede mostrar su factorial por Digital Lab Sim\n"
 msg11: .asciiz "--- ERROR --- El tamaño del vector debe ser positivo"
 msg12: .asciiz "\n--- AVISO --- La distancia euclídea es mayor a 99 y no se puede mostrar por Digital Lab Sim"
 .text
 
  # $t1: contador de números
 # $t2: resultado parcial
 # $t3: Resto de la división 01
 # $t4: Resto de la división 02
 # $t5: Resultado para Digital Lab Sim
 # $t6: Almacenamos Segundo Dígito
 # &t7: Numero 99
 # $t8: Indice
 # $t9: Numero 10
 
 main:
 # imprimir mensaje "Introduce el tamaño del vector: "...
 la $a0,msg01
 li $v0,4
 syscall
 # leer tamaño del vector
 li $v0,5
 syscall
 move $t0,$v0
 #if
 bltz $t0 ErrorMenor0
 # si cantidad de números a leer es cero, terminar.
 beqz $t0,Final
 # bucle de lectura y cálculo.
 li $t1,0
 li $t2,0
 li $t3,0
 li $t4,0
 li $t7,99
 b01:
 # imprimir mensaje "Introducir número: "
 la $a0,msg02
 li $v0,4
 syscall
 # leer número
 li $v0,5
 syscall
 # sumamos todos los factores // Media Aritmetica 01
 add $t2,$t2,$v0
 #bucle
 addi $t1,$t1,1
 blt $t1,$t0,b01
 #Elevamos al cuadrado el número para utilizarlo posteriormente en la distancia eucídea
 mult $t2,$t2
 mflo $t6 #Almacenamiento en $t6
 #divison de la suma de factores entre el numero de componentes // Media Aritmetica 02
 div $t2,$t1
 mflo $t2
 #Comprobar que la media es correta y podmeos imprimirla
  blt $t2,$zero ErrorNegativo
 bge $t2,$t7 ErrorMayor99
 # imprimir mensaje "La media aritmética es: "...
 la $a0,msg03
 li $v0,4
 syscall
 # imprime el resultado por pantalla
 move $a0,$t2
 li $v0,1
 syscall
 
 ## Asignar en $t9 el numero 10
 li $t9,10
 
 #Comprobar si el numero es de dos digitos(mayor igual que 10)
 bge $t2,$t9,TieneDosDigitos
 blt $t2,$t9,TieneUnDigito
 
 TieneUnDigito:
 #------------------------------------------------------------------------------UN DIGITO
 #Ponemos un indice
 li $t8,0
 #Tiene un digito
 beq $t2,$t8 MostrarZero
 addi $t8,$t8,1
 beq $t2,$t8 MostrarUno
 addi $t8,$t8,1
 beq $t2,$t8 MostrarDos
 addi $t8,$t8,1
 beq $t2,$t8 MostrarTres
 addi $t8,$t8,1
 beq $t2,$t8 MostrarCuatro
 addi $t8,$t8,1
 beq $t2,$t8 MostrarCinco
 addi $t8,$t8,1
 beq $t2,$t8 MostrarSeis
 addi $t8,$t8,1
 beq $t2,$t8 MostrarSiete
 addi $t8,$t8,1
 beq $t2,$t8 MostrarOcho
 addi $t8,$t8,1
 beq $t2,$t8 MostrarNueve
 
 #Activamos las secciones correspondientes del Digital Lab Sim
 MostrarZero: 
li $t5,0x3F
j Imprimir
 MostrarUno: 
li $t5,0x6
j Imprimir
 MostrarDos: 
li $t5,0x5B
j Imprimir
 MostrarTres: 
li $t5,0x4F
j Imprimir
 MostrarCuatro: 
li $t5,0x66
j Imprimir
 MostrarCinco: 
li $t5,0x6D
j Imprimir
 MostrarSeis: 
li $t5,0x7D
j Imprimir
 MostrarSiete: 
li $t5,0x7
j Imprimir
 MostrarOcho: 
li $t5,0x7F
j Imprimir
 MostrarNueve: 
li $t5,0x67
j Imprimir



 TieneDosDigitos:
 #Dividir el resultado en dos factores independientes 
 div $t2,$t9
 mfhi $t3 #Resto (DERECHA)
 mflo $t4 #Resultado de la division (IZQUIERDA)
 
  #Ponemos un indice
 li $t8,0
#Primer Digito (El de la izquierda) ----------------------------------------------------------- DOS DIGITOS

 beq $t4,$t8 MostrarZero2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarUno2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarDos2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarTres2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarCuatro2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarCinco2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarSeis2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarSiete2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarOcho2
 addi $t8,$t8,1
 beq $t4,$t8 MostrarNueve2
  
 #Activamos las secciones correspondientes del Digital Lab Sim
 MostrarZero2: 
li $t6,0x3F
j Imprimir2.1
 MostrarUno2: 
li $t6,0x6
j Imprimir2.1
 MostrarDos2: 
li $t6,0x5B
j Imprimir2.1
 MostrarTres2: 
li $t6,0x4F
j Imprimir2.1
 MostrarCuatro2: 
li $t6,0x66
j Imprimir2.1
 MostrarCinco2: 
li $t6,0x6D
j Imprimir2.1
 MostrarSeis2: 
li $t6,0x7D
j Imprimir2.1
 MostrarSiete2: 
li $t6,0x7
j Imprimir2.1
 MostrarOcho2: 
li $t6,0x7F
j Imprimir2.1
 MostrarNueve2: 
li $t6,0x67
j Imprimir2.1


Imprimir2.1:
# imprimir el resultado por LabSim
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t6, 0($s1)

#Segundo digito (el de la derecha) ------------------------------------------------

 #Ponemos un indice
 li $t8,0
 #Tiene un digito
  beq $t3,$t8 MostrarZero3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarUno3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarDos3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarTres3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarCuatro3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarCinco3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarSeis3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarSiete3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarOcho3
 addi $t8,$t8,1
 beq $t3,$t8 MostrarNueve3

 
 #Activamos las secciones correspondientes del Digital Lab Sim
 MostrarZero3: 
li $t5,0x3F
j Imprimir2.2
 MostrarUno3:
li $t5,0x6
j Imprimir2.2
 MostrarDos3: 
li $t5,0x5B
j Imprimir2.2
 MostrarTres3: 
li $t5,0x4F
j Imprimir2.2
 MostrarCuatro3: 
li $t5,0x66
j Imprimir2.2
 MostrarCinco3: 
li $t5,0x6D
j Imprimir2.2
 MostrarSeis3: 
li $t5,0x7D
j Imprimir2.2
 MostrarSiete3: 
li $t5,0x7
j Imprimir2.2
 MostrarOcho3: 
li $t5,0x7F
j Imprimir2.2
 MostrarNueve3: 
li $t5,0x67
j Imprimir2.2



 Imprimir:
# imprimir el resultado por LabSim
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t5, 0($s0)
#Poner el dígito izquierdo a Null porque solo mostramos el digito derecho
li $t9,0x00
sb $t9, 0($s1)

j DistanciaEuclidea
 
 Imprimir2.2:
 # imprimir el resultado por LabSim
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t5, 0($s0)

j DistanciaEuclidea
 #ErrorMenor0
 ErrorNegativo:
 # imprimir mensaje 
 la $a0,msg05
 li $v0,4
 syscall
 #Final
 li $v0,10
 syscall
 
 #ErrorMayor99
 ErrorMayor99:
 # imprimir mensaje 
 la $a0,msg06
 li $v0,4
 syscall
 #Final
 li $v0,10
 syscall
 
 
DistanciaEuclidea: #----------------------------------------------------------------------------------- DISTANCIA EUCLIDEA
 # imprimir mensaje "Pulsa para continuar..."...
 la $a0,msg09
 li $v0,4
 syscall
 # Esperar a que pulse
 li $v0,12
 syscall
 #Anteriormente ya hemos elevado al cuadrado la suma de todos los componentes dle vector, que está almacenada en $t6
 #Mostrar mensaje por pnatalla "La distancia eucídea es ..."
 la $a0,msg08
 li $v0,4
 syscall
 #Mostrar resultado
 move $a0,$t6
 li $v0, 1
 syscall
 #AVISO ifDistania euclidea mayor de 99
 move $t2,$t6
 li $s3,100
 blt $t2,$s3 ImprimirEuclidea
  # imprimir mensaje "La distancia no se peude mostarr por Lab Sim...."...
 la $a0,msg12
 li $v0,4
 syscall
 j Factorial
 
 ImprimirEuclidea:#...................................................................................
 
 #Comprobar si el numero es de dos digitos(mayor igual que 10)
 li $s3,10
 bge $t2,$s3,TieneDosDigitos_
 blt $t2,$s3,TieneUnDigito_
 
 TieneUnDigito_:
 #------------------------------------------------------------------------------UN DIGITO
 #Ponemos un indice
 li $t8,0
 #Tiene un digito
 beq $t2,$t8 MostrarZero_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarUno_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarDos_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarTres_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarCuatro_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarCinco_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarSeis_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarSiete_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarOcho_
 addi $t8,$t8,1
 beq $t2,$t8 MostrarNueve_
 
 #Activamos las secciones correspondientes del Digital Lab Sim
 MostrarZero_: 
li $t5,0x3F
j Imprimir_
 MostrarUno_: 
li $t5,0x6
j Imprimir_
 MostrarDos_: 
li $t5,0x5B
j Imprimir_
 MostrarTres_: 
li $t5,0x4F
j Imprimir_
 MostrarCuatro_: 
li $t5,0x66
j Imprimir_
 MostrarCinco_: 
li $t5,0x6D
j Imprimir_
 MostrarSeis_: 
li $t5,0x7D
j Imprimir_
 MostrarSiete_: 
li $t5,0x7
j Imprimir_
 MostrarOcho_: 
li $t5,0x7F
j Imprimir_
 MostrarNueve_: 
li $t5,0x67
j Imprimir_



 TieneDosDigitos_:
 #Dividir el resultado en dos factores independientes 
 div $t2,$s3
 mfhi $t3 #Resto (DERECHA)
 mflo $t4 #Resultado de la division (IZQUIERDA)
 
  #Ponemos un indice
 li $t8,0
#Primer Digito (El de la izquierda) ----------------------------------------------------------- DOS DIGITOS

 beq $t4,$t8 MostrarZero2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarUno2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarDos2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarTres2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarCuatro2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarCinco2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarSeis2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarSiete2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarOcho2_
 addi $t8,$t8,1
 beq $t4,$t8 MostrarNueve2_
  
 #Activamos las secciones correspondientes del Digital Lab Sim
 MostrarZero2_: 
li $t6,0x3F
j Imprimir2.1_
 MostrarUno2_: 
li $t6,0x6
j Imprimir2.1_
 MostrarDos2_: 
li $t6,0x5B
j Imprimir2.1_
 MostrarTres2_: 
li $t6,0x4F
j Imprimir2.1_
 MostrarCuatro2_: 
li $t6,0x66
j Imprimir2.1_
 MostrarCinco2_: 
li $t6,0x6D
j Imprimir2.1_
 MostrarSeis2_: 
li $t6,0x7D
j Imprimir2.1_
 MostrarSiete2_: 
li $t6,0x7
j Imprimir2.1_
 MostrarOcho2_: 
li $t6,0x7F
j Imprimir2.1_
 MostrarNueve2_: 
li $t6,0x67
j Imprimir2.1_


Imprimir2.1_:
# imprimir el resultado por LabSim
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t6, 0($s1)

#Segundo digito (el de la derecha) ------------------------------------------------

 #Ponemos un indice
 li $t8,0
 #Tiene un digito
  beq $t3,$t8 MostrarZero3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarUno3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarDos3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarTres3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarCuatro3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarCinco3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarSeis3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarSiete3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarOcho3_
 addi $t8,$t8,1
 beq $t3,$t8 MostrarNueve3_

 
 #Activamos las secciones correspondientes del Digital Lab Sim
 MostrarZero3_: 
li $t5,0x3F
j Imprimir2.2_
 MostrarUno3_:
li $t5,0x6
j Imprimir2.2_
 MostrarDos3_: 
li $t5,0x5B
j Imprimir2.2_
 MostrarTres3_: 
li $t5,0x4F
j Imprimir2.2_
 MostrarCuatro3_: 
li $t5,0x66
j Imprimir2.2_
 MostrarCinco3_: 
li $t5,0x6D
j Imprimir2.2_
 MostrarSeis3_: 
li $t5,0x7D
j Imprimir2.2_
 MostrarSiete3_: 
li $t5,0x7
j Imprimir2.2_
 MostrarOcho3_: 
li $t5,0x7F
j Imprimir2.2_
 MostrarNueve3_: 
li $t5,0x67
j Imprimir2.2_



 Imprimir_:
# imprimir el resultado por LabSim cuando solo tiene un digito
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t5, 0($s0)
#Poner el dígito izquierdo a Null porque solo mostramos el digito derecho
li $t9,0x00
sb $t9, 0($s1)

 Imprimir2.2_:
 # imprimir el resultado por LabSim
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t5, 0($s0)




Factorial: #------------------------------------------------------------------------------------------ FACTORIAL
 # imprimir mensaje "Pulsa para continuar..."...
 la $a0,msg09
 li $v0,4
 syscall
 # Esperar a que pulse
 li $v0,12
 syscall


# Indice
li $s3,0
#Indice
li $s4,1
InicioBucle02:
addi $s3,$s3,1
mult $s3,$s4
mflo $s4
blt $s3,$t0 InicioBucle02
 # imprimir mensaje 
 la $a0,msg07
 li $v0,4
 syscall
  # imprime el resultado por pantalla
 move $a0,$s4
 li $v0,1
 syscall
 

  #Asignacion
li $t8,4
  #if
 bgt $t0,$t8 Error_NoLabSim
 #Imprime el resultado por Lab Sim
 #Ponemos un indice
li $t1,1
li $t2,2
li $t3,6
li $t4,24
 # Comparamos
 beq $s4,$t1 Mostrar_1
 beq $s4,$t2 Mostrar_2
 beq $s4,$t3 Mostrar_6
 beq $s4,$t4 Mostrar_24
  #Activamos las secciones correspondientes del Digital Lab Sim
 Mostrar_1:
li $t4,0x00 
li $t5,0x6
j Imprimir_1
 Mostrar_2:
li $t4,0x00
li $t5,0x5B
j Imprimir_1
 Mostrar_6:
li $t4,0x00  
li $t5,0x7D
j Imprimir_1
Mostrar_24:
li $t4,0x5B
li $t5,0x66
j Imprimir_1

Imprimir_1:
# imprimir el resultado por LabSim
li $s0, 0xFFFF0010 # carga dirección base del display derecho
li $s1, 0xFFFF0011 # carga dirección base del display izquierdo
sb $t5, 0($s0)
#Poner el dígito izquierdo a Null porque solo mostramos el digito derecho
sb $t4, 0($s1)
j Final


 ErrorMenor0:
 # imprimir mensaje "Error, no se puede..."...
 la $a0,msg11
 li $v0,4
 syscall
 j Final
 
 Error_NoLabSim:
  # imprimir mensaje "Error, no se puede..."...
 la $a0,msg10
 li $v0,4
 syscall
 
Final:
 #Final
 li $v0,10
