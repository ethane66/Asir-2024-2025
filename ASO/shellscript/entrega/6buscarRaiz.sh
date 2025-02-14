#!/bin/bash
# Autor: Víctor Rodríguez Pérez
while true; do
    read -p "introduce el nombre del archivo a buscar (o escribe 'salir' para terminar): " archivo

    if [[ "$archivo" == "salir" ]]; then
        echo "saliendo del programa..."
        exit 0 #exit 0 corta el bucle
    fi

    echo "buscando '$archivo' en el directorio /..."
    resultados=$(find / -type f -name "$archivo" 2>/dev/null) 
    #2>/dev/null redirige los erroes para que no salgan en pantalla
    #esto es porque si buscamos en directorios a los que no tenemos acceso, saldrán errores

    if [[ -n "$resultados" ]]; then
        echo "archivos encontrados:"
        echo "$resultados"
    else
        echo "no se encontró ningún archivo llamado '$archivo' en /"
    fi

    echo
    read -p "quieres buscar otro archivo? (s/n): " continuar
    if [[ "$continuar" != "s" ]]; then
        echo "saliendo del programa..."
        exit 0
    fi
done
