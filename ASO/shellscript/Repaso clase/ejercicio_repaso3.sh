#!/bin/bash
# Crea un shell script que recibe un número indeterminado de parámetros y que realice las siguientes acciones:
# - Los parámetros son nombres de extensiones de archivos.
# - El script debe crear un directorio con el mismo nombre de la extensión y copiar los archivos con esa extensión a ese directorio.

# Verifica si no se han pasado parámetros.
if [ $# -eq 0 ]; then
    echo "No has pasado parámetros"
    exit
fi

# Itera sobre cada parámetro pasado al script.
while [ $# -ne 0 ]; do
    # Verifica si el directorio con el nombre de la extensión ya existe.
    if [ -d $1 ]; then
        echo "La carpeta $1 existe"
        # Copia los archivos con la extensión especificada al directorio existente.
        cp *.$1 ./$1
    else
        echo "La carpeta $1 no existe"
        # Crea un nuevo directorio con el nombre de la extensión.
        mkdir $1
        # Copia los archivos con la extensión especificada al nuevo directorio.
        cp *.$1 ./$1
    fi
    # Pasa al siguiente parámetro.
    shift
done


#Hacerlo con ultil

if [ $# -eq 0 ]; then
    echo "No has pasado parámetros"
    exit
fi

until [ $# -eq 0 ]; do
    if [ -d $1 ]; then
        echo "el directorio $1 existe"
        echo "copiaremos los ficheros de tipo $1 a la carpeta $1"
        cp *.$1 ./$1
    else 
        echo "El directorio $1 no existe"
        echo "Creando el directorio $1"
        mkdir $1
        echo "Moviendo lso archivos de tipo $1 al directorio $1"
        cp *.$1 ./$1
    fi
shift
done