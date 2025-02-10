#!/bin/bash

# Obtener el nombre del usuario actual
usuario=$(whoami)

# Comprobar si el usuario es Manolo
if [[ "$usuario" == "Manolo" ]]; then
    echo "Hola, Manolo!"
else
    echo "Hasta siempre, $usuario."
fi
