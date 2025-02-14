#!/bin/bash
# Autor: Víctor Rodríguez Pérez
usuario=$(whoami)
echo "el usuario es $usuario"
if [ "$usuario" = "manolo" ]; then
    echo "hola $usuario !!!"
else
    echo "hasta siempre $usuario"
fi