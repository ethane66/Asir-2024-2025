#!/bin/bash

# Crea un script que reciba desde la línea de órdenes los nombres de dos archivos y nos diga cuál de los dos tiene mayor tamaño.
# Si el número de parámetros no es correcto, se debe visualizar un mensaje de error. pero hacerlo con ls -l

tam1=0
tam2=0

# Verifica si el número de parámetros es menor o igual a 1
if [ $# -le 1 ]
then 
    echo "No hay suficientes parametros"
else
    # Verifica si el número de parámetros es mayor a 2
    if [ $# -gt 2 ]
    then
        echo "Hay demasiado parametros"
    else
        # Obtiene el tamaño del primer archivo en bytes usando ls -l
        tam1=$( ls -l $1 | awk '{print $5}' )
        # Obtiene el tamaño del segundo archivo en bytes usando ls -l
        tam2=$( ls -l $2 | awk '{print $5}' )

        # Compara los tamaños de los archivos
        if [ $tam1 -gt $tam2 ]
        then 
            echo "Fichero 1 es mas grande"
        else
            echo "Fichero 2 es mas grande"
        fi 
    fi 
fi
