#!/bin/bash

# Pedir al usuario un número
read -p "Introduce un número entre 1 y 9: " num

# Validar que el número esté entre 1 y 9
if [[ $num -lt 1 -o $num -gt 9 ]]; then
    echo "El número introducido '$num' no es un valor correcto"
    exit 1
fi

# Inicializar el factorial y la secuencia
factorial=1
secuencia="1"

# Calcular el factorial
for (( i=2; i<=num; i++ )); do
    factorial=$(( factorial * i ))
    secuencia+="*$i"
done

# Mostrar el resultado en el formato especificado
echo "$num!=$secuencia=$factorial"
