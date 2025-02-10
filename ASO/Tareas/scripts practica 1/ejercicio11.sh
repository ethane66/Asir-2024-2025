#!/bin/bash

# Pedir el nombre del usuario
echo -n "Introduce el nombre del usuario a comprobar: "
read usuario

while true; do
    # Comprobar si el usuario está conectado
    if who | grep -w "$usuario" > /dev/null; then
        echo "El usuario $usuario está conectado."
    else
        echo "El usuario $usuario no está conectado."
    fi
    
    # Esperar 1 minuto antes de volver a comprobar
    sleep 60
done
