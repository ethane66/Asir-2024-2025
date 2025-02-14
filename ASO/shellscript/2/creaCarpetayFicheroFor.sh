#!/bin/bash
# crear un script que nos admita un numero indeterminado de parametros y que realice las siguientes acciones:
# 1 - si no se le pasa parametros muestra un error y termina de ejecutarse
# 2 - por cada parametro recibido se va a crear una carpeta con el nombre del parametro y dentro de esa carpeta se hace un fichero con ese mismo nombre
if [ $# -eq 0 ]; then #comprueba si hay valores en total
    echo "introduce parametros!!!"
    exit 1
fi

for nombre in $*; do #por cada valor
    mkdir $nombre
    echo "se ha creado la carpeta $nombre"
    cd $nombre
    touch $nombre.txt
    echo "se ha creado el archivo $nombre.txt"
    cd ..
done