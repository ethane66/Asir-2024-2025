#!/bin/bash
#shift mueve la posicion de los valores para que se puedan mostar mas de 9
total=$#
if [ $total -eq 0 ]; then #comprueba si hay valores en total
    echo "introduce numeros!!!"
    exit 1
fi
for ((i=1;i<=$total;i++)); do #decrementa el valor de $# 
    echo $1 $2 $3 $4 $5 $6 $7 $8 $9
    #solo se pueden asignar 9 variables, 0 es el nombre del archivo
    shift #desplaza las variables
done
