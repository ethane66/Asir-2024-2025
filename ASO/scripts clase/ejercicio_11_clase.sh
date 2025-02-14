#!/bin/bash
# Crea un script que, pasado un número indeterminado de parámetros, haga lo siguiente:
# Si no hay parámetros -> Error
# Si el parámetro no es un directorio -> Error
# Si es un directorio, pregunta si se quiere borrar

respuest=0

# Verifica si no se han pasado parámetros
if [ $# -eq 0 ]
then
    echo "No se han pasado parámetros"
    exit 1
fi

# Mientras haya parámetros
while [ $# -gt 0 ]
do
    # Verifica si el parámetro es un directorio
    if [ -d "$1" ]
    then
        # Pregunta si se desea eliminar el fichero
        echo -n "Desea eliminar el directorio $1? (s/n): "
        read respuesta
        # Si la respuesta es afirmativa, elimina el directorio
        if [ "$respuesta" = "s" ]
        then
            rm -r "$1"
            echo "Directorio $1 eliminado"
        else
            # Si la respuesta no es afirmativa, no elimina el directorio
            echo "No se elimina el directorio $1"
        fi
    else
        # Si el parámetro no es un directorio, muestra un error
        echo "Error en el parámetro $1: no es un directorio"
    fi
    # Pasa al siguiente parámetro
    shift
done