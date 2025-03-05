#!/bin/bash

while true; do
    read -p "Introduce un nombre de archivo para buscar: " archivo

    if [[ "$archivo" == "exit" ]]; then
        echo "Has decidido salir"
        exit
    fi

    echo "Buscando '$archivo' en la raíz del sistema..."
    
    resultado=$(find / -type f -name "$archivo" 2> /dev/null)

    if [[ -n "$resultado" ]]; then
        echo "Archivos encontrados:"
        echo "$resultado"
    else
        echo "No se encontraron archivos con el nombre '$archivo'."
    fi

    echo
    read -p "¿Quieres buscar de nuevo? (s/n): " con
    
    if [[ "$con" == "n" ]]; then
        echo "Saliendo del programa..."
        exit
    fi
done
