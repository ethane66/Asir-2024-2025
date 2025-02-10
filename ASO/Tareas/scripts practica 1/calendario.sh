#!/bin/bash

while true; do
    # Preguntar el mes y el año
    echo -n "Introduce el mes (1-12): "
    read mes
    echo -n "Introduce el año (ej. 2024): "
    read anio
    
    # Mostrar el calendario
    cal $mes $anio
    
    # Preguntar si desea continuar
    echo -n "¿Deseas continuar? (s/n): "
    read respuesta
    
    if [[ "$respuesta" != "s" && "$respuesta" != "S" ]]; then
        echo "Saliendo del programa."
        break
    fi
done
