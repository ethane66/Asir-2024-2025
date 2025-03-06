#!/bin/bash

usuario=0
uid=0
grupoid=0
grupo=0

if [ $# -eq 0 ]; then
    echo "No has pasado parametros"
    exit 1
fi

usuario=$( grep "^$1:" /etc/passwd | cut -d ":" -f 1 )
uid=$( grep "^$1:" /etc/passwd | cut -d ":" -f 3 )
grupoid=$( grep "^$1" /etc/passwd | cut -d ":" -f 4 )
grupo=$(grep "^[^:]*:[^:]*:$grupoid:" /etc/group | cut -d ":" -f 1)
otrosusr=$(grep "^$grupo" /etc/group | cut -d ":" -f 4)

if [ -n "$usuario" ];then
    echo "El usuario $usuario existe"
    echo "El uid del usuario es $uid"
    echo "El id del grupo es $grupoid y el grupo se llama $grupo"
   

    if [ "$otrousr" == "$usuario" ];then
        echo "El grupo solo tiene el usuario $usuario"
    else
        echo "Los otros usuarios que pertenecen a este grupo son: $otrosusr"
    fi
else
    echo "El usuario no existe"
fi
