#!/bin/bash

factorial=1


read -p "Introduce un numero entre 1 y 9 para hacer el factorial " num


if [ "$num" -lt 1 -o "$num" -gt 9 ]; then
    echo "$num se sale de los parametros"
    exit
    
fi 

for (( i=$num; i>1; i-- )); do
    factorial=$(( factorial * i ))
done
echo "El factorial de $num es $factorial"

