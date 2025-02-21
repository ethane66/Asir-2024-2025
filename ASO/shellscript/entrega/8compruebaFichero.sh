#!/bin/bash
# Autor: Víctor Rodríguez Pérez
while read col1 col2 col3; do #read por defecto asigna variables a cada columna
    if [ $col1 = $col2 ] && [ $col2 = $col3 ] && [ $col1 = $col3 ]; then
        echo "$col1 $col2 $col3 son iguales"
        else
        echo "$col1 $col2 $col3 no son iguales"
    fi
done < fichero.txt
