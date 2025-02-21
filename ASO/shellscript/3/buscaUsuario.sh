#!/bin/bash
nombre=0
read -p "introduce el usuario a buscar: " nombre

busqueda=$(cat /etc/passwd | grep ^$nombre | cut -d: -f1)

if [ "$busqueda" = "$nombre" ]; then
    echo "Valor de \$busqueda: $busqueda"
    echo "el usuario $nombre si existe"
else
    echo "el usuario $nombre no existe"
fi