#!/bin/bash
#vamos a crear un script que nos admita un numero indeterminado de parametros y que realize las
#siguientes accciones:
#1: Si no se le pasa parametros nos muestra un error y termina de ejecutarse
#2: Por cada parametro recibido se va crear un directorio con el nombre del parametro y dentro un
#fichero con el mismo nombre


if [ $# -eq 0 ]; then
    echo "No hay parametros"
    exit 1
fi

while [ $# -ne 0 ]
    do 
        mkdir $1
        echo "Esta creado el directorio $1"
        cd $1
        touch $1.txt
        cd ..
    shift
done

