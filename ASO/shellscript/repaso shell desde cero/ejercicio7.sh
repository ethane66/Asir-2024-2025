#!/bin/bash
#Crear un script que recorra los archivos del directorio actual e indique si es un archivo o un directorio.

for item in *; do
    if [ -d "$item" ]; then
        echo "$item es un directorio"
    elif [ -f "$item" ]; then
        echo "$item es un fichero"
    else
        echo "$item no es ni fichero ni directorio"
    fi
done

