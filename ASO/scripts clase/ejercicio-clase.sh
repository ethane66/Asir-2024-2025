#!/bin/bash

# Verifica si el número de argumentos pasados no es igual a 0
if [ $# -ne 0 ]
then
    # Verifica si el archivo pasado como argumento existe
    if [ -e $1 ] 
    then 
        # Si el archivo existe, imprime un mensaje y elimina el archivo
        echo "se ha borrado el fichero $1"
        rm $1
    else
        # Si el archivo no existe, imprime un mensaje
        echo "El fichero $1 no existe"
    fi
else  
    # Si no se pasan argumentos, imprime un mensaje
    echo "No hay parametros"
fi