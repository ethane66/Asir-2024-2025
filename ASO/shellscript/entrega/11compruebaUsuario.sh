#!/bin/bash
# Autor: Víctor Rodríguez Pérez
read -p "que usuario quieres buscar? -> " usuario
if [ -n "$usuario" ]; then
    while true; do
        if 
            who | grep "$usuario"; then
                echo "el usuario $usuario está conectado"
            else
                echo "el usuario $usuario no está conectado"
        fi
    sleep 60
    done
else 
    echo "tienes que especificar un usuario!!!"
fi