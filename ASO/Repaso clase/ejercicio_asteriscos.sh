#!/bin/bash
#Crear un ShellScript  asterisco. Bash que muestre en pantalla una línea con tantos asteriscos (*) como indique el número introducido como parámetro al script. El número de parámetros es  indefinido. COMPROBACIONES:
#1)	Mirar el valor del numeros itnroducidos por telcado que la longitud de los parametros esta entre 1 y 2 digitos
#2) Visualizamos la lineos con el numero de * que indicque el numero introducido por teclado.


#Con bucle for

# Leer un número de hasta 2 dígitos del usuario
read -n2 -p "Introduce un numero entre 1 y 99: " numero

# Bucle for para imprimir tantos asteriscos como el número introducido
for (( i=1; i<= $numero; i++ ))
do 
    echo -n "*"
done

#con bucle while

# Inicializar el contador en 1
i=1

# Bucle while para imprimir tantos asteriscos como el número introducido
while [ $i -le $numero ]
do
    # Imprimir un asterisco sin salto de línea
    echo -n "*"
    # Incrementar el contador
    ((i++))
done

#con bucle until

# Inicializar el contador en 1
i=1

# Bucle until para imprimir tantos asteriscos como el número introducido
until [ $i -gt $numero ]
do
    # Imprimir un asterisco sin salto de línea
    echo -n "*"
    # Incrementar el contador
    ((i++))
done

#Hacerlo repetitivo

