#!/bin/bash

# Verifica si el número de argumentos es menor o igual a 1
if [ $# -le 1 ]; then
    echo "no hay suficientes parametros"
else
    # Verifica si el número de argumentos es mayor a 2
    if [ $# -gt 2 ]; then
        echo "Demasiados argumentos"
    else
        # Compara si el primer argumento es igual al segundo
        if [ $1 = $2 ]; then
            echo "Las palabras son iguales"
        else
            echo "Las palabras no son iguales"
        fi
    fi
fi
