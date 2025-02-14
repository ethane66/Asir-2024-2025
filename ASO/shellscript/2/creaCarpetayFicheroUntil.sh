#!/bin/bash
# crear un script que nos admita un numero indeterminado de parametros y que realice las siguientes acciones:
# 1 - si no se le pasa parametros muestra un error y termina de ejecutarse
# 2 - por cada parametro recibido se va a crear una carpeta con el nombre del parametro y dentro de esa carpeta se hace un fichero con ese mismo nombre
if [ $# -eq 0 ]; then #comprueba si hay valores en total
    echo "introduce parametros!!!"
    exit 1
fi

until [ $# -eq 0 ]; do #hasta que sea 0
    mkdir $1
    echo "se ha creado la carpeta $1"
    cd $1
    touch $1.txt
    echo "se ha creado el archivo $1.txt"
    cd ..
    shift #mueve el valor
done