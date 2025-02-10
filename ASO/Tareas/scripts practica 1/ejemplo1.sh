#!/bin/bash

while true; do
    # Pedir el nombre del archivo a buscar
    echo -n "Introduce el nombre del archivo a buscar: "
    read archivo
    
    # Buscar el archivo en el directorio raíz
    find / -name "$archivo" 2>/dev/null
    
    # Preguntar si desea continuar
    echo -n "¿Deseas buscar otro archivo? (s/n): "
    read respuesta
    
    if [[ "$respuesta" != "s" && "$respuesta" != "S" ]]; then
        echo "Saliendo del programa."
        break
    fi
done
