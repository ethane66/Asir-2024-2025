#!/bin/bash

# Comprobamos si se han pasado parámetros
if [ $# -eq 0 ]; then
    echo "Error no me has pasado parametros"
    exit 1
fi

# Comprobamos para cada usuario pasado como parámetro
for user in "$@"; do
    # Comprobamos si el usuario existe en el sistema
    if id "$user" &>/dev/null; then
        echo "El usuario '$user' si existe en el sistema"
        
        # Obtenemos el UID del usuario
        user_uid=$(id -u "$user")
        echo "El GUID del usuario es: $user_uid"
        
        # Obtenemos el nombre del grupo principal del usuario
        group_name=$(id -gn "$user")
        echo "Nombre del grupo es: $group_name"
        
        # Comprobamos si el grupo tiene otros usuarios
        other_users=$(getent passwd | grep ":$group_name:" | cut -d: -f1 | grep -v "^$user$")
        
        if [ -z "$other_users" ]; then
            echo "Grupo principal de '$user' y no tiene mas usuarios"
        else
            echo "Este grupo tiene otros usuarios y son: $other_users"
        fi
    else
        echo "El usuario '$user' no existe en el sistema"
    fi
done
