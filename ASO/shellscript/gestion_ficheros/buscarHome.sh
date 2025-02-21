#!/bin/bash

while true; do
    read -p "introduce el nombre del archivo a buscar (o escribe 'salir' para terminar): " archivo

    if [[ "$archivo" == "salir" ]]; then
        echo "saliendo del programa..."
        exit 0
    fi

    echo "buscando '$archivo' en el directorio /home..."
    resultados=$(find /home -type f -name "$archivo")

    if [[ -n "$resultados" ]]; then
        echo "archivos encontrados:"
        echo "$resultados"
    else
        echo "no se encontró ningún archivo llamado '$archivo' en /home."
    fi

    echo
    read -p "quieres buscar otro archivo? (s/n): " continuar
    if [[ "$continuar" != "s" ]]; then
        echo "saliendo del programa..."
        exit 0
    fi
done
