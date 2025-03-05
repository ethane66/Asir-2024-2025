#!/bin/bash

read -p "Introduce el usuario a buscar: " usuario

if [ -n "$usuario" ];then
    while true; do
        if
            who | grep "$usuario"; then
            echo "El usuario $usuario esta conectado"
        else
            echo "El usuario $usuario no esta conectado"
        fi
    sleep 1
    done
else
    echo "No has especificado un usuario existente"
fi