#!/bin/bash

# Leer la primera línea del fichero
linea=$(head -n 1 fichero.txt)

# Extraer las tres primeras columnas
col1=$(echo $linea | awk '{print $1}')
col2=$(echo $linea | awk '{print $2}')
col3=$(echo $linea | awk '{print $3}')

# Comparar las columnas
echo "Columna 1: $col1"
echo "Columna 2: $col2"
echo "Columna 3: $col3"

if [[ "$col1" == "$col2" && "$col2" == "$col3" ]]; then
    echo "Las tres primeras columnas son iguales."
else
    echo "Las tres primeras columnas son diferentes."
fi
