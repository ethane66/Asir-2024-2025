#!/bin/bash
# Autor: Víctor Rodríguez Pérez
while true; do
read -p "introduce el mes que quieres mirar (1-12) -> " mes
read -p "introduce el año que quieres mirar -> " ano

#convierte mes a decimal pq sino al bash trabajar con octales, cualquier numero >9 se sale del rango del read
mes=$((10#$mes)) 

echo "mostrando el calendario del $mes/$ano"
cal $mes $ano

read -p "quieres mirar otro mes? (s/n): " continuar
    if [[ "$continuar" != "s" ]]; then
        echo "saliendo del programa..."
        exit 0
    fi
done