#!/bin/bash

# Solicitar al usuario que ingrese un número de tres dígitos
echo "Introduce un número de tres dígitos:"
read numero

# Verificar que el número tenga exactamente tres dígitos
if [[ ! $numero =~ ^[0-9]{3}$ ]]; then
    echo "Error: Debes introducir un número de tres dígitos."
    exit 1
fi

# Forma 1: Comparar el primer y tercer dígito
if [[ ${numero:0:1} == ${numero:2:1} ]]; then
    echo "Forma 1: El número $numero es capicúa."
else
    echo "Forma 1: El número $numero no es capicúa."
fi

# Forma 2: Invertir el número y comparar
inverso=$(echo $numero | rev)
if [[ $numero == $inverso ]]; then
    echo "Forma 2: El número $numero es capicúa."
else
    echo "Forma 2: El número $numero no es capicúa."
fi
