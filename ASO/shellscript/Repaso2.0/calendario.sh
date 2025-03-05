#!/bin/bash
while true; do
read -p "introduce un mes " mes
read -p "introduce un año " ano

mes=$((10#$mes)) 

echo "mostrando el calendario del $mes/$ano"
cal $mes $ano

read -p "quieres mirar otro mes? (s/n): " cont
    if [[ "$cont" != "s" ]]; then
        echo "saliendo del programa..."
        exit 0
    fi
done