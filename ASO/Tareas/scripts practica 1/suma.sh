#!/bin/bash

# Solicitar al usuario que ingrese el primer número
echo "Introduce el primer número:"
read num1

# Solicitar al usuario que ingrese el segundo número
echo "Introduce el segundo número:"
read num2

# Realizar la suma
suma=$((num1 + num2))

# Mostrar el resultado
echo "La suma de $num1 y $num2 es: $suma"
