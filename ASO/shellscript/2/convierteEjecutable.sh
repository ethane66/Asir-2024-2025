#!/bin/bash
if [ $# -eq 0 ]; then #comprueba si hay valores en total
    echo "introduce parametros!!!"
    exit 1
fi

while [ $# -ne 0 ]; do
    if [ -e $1 ]; then
        echo "el fichero $1 existe, se le va a dar permisos de ejecucion a usuario y grupo..."
        chmod ug+x $1
        
        #variable=(`ls -l $1 | cut -c 2,3,4`)
        #echo "$variable"
        #read=(`echo "$variable" | cut -c 1`)
        #write=(`echo "$variable" | cut -c 2`)
        #execute=(`echo "$variable" | cut -c 3`)

        echo "permisos de usuario:"
        read=$( ls -l $1 | cut -c 2 )
        write=$( ls -l $1 | cut -c 3 )
        execute=$( ls -l $1 | cut -c 4 )
        echo "$read , $write , $execute"
        
        if [ $read == "r" ]; then
            echo "el usuario si tiene permisos de lectura"
        else
            echo "el usuario no tiene permisos de lectura"
        fi
        if [ $write == "w" ]; then
            echo "el usuario si tiene permisos de escritura"
        else
            echo "el usuario no tiene permisos de escritura"
        fi
        if [ $execute == "x" ]; then
            echo "el usuario si tiene permisos de ejecucion"
        else
            echo "el usuario no tiene permisos de ejecution"
        fi
        echo ""
    else
        echo "el fichero $1 no existe"
        echo ""
    fi
    shift
done