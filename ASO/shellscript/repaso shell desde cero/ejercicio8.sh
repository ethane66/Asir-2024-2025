#!/bin/bash
# Pedir al usuario que ingrese un número y contar desde 1 hasta ese número usando while.
 
read -p "Por favor, ingrese un número:" numero


contador=1
while [ $contador -le $numero ]
do
    echo $contador
    contador=$((contador + 1))
done

