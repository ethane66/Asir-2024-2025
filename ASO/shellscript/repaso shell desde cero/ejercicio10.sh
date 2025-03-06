#!/bin/bash

repetir=s
opcion=0
isroot=$(whoami)    

if [ "$isroot" == "root" ];then 

    while [ "$repetir" = "s" ]; do

    echo "----------menu----------"
    echo "1: crear el usuario"
    echo "2: Borrar usuario"
    echo "3: Modificar usuario"
    echo "4: Exit"

    read -n 1 -p "Seleciona una opcion: " opcion
    echo ""
    case $opcion in
    1)
        read -p "Introduce el nombre del usuario a crear: " usuario
        grep "^$usuario:" /etc/passwd
        if [ $? -eq 0 ]; then
            echo "El usuario ya existe"
        else
            useradd -d /home/$usuario -m -s /bin/bash -k /etc/skel $usuario
        fi
        read -p "Introduce un grupo para añadir el usuario: " grupo
        grep "^$grupo:" /etc/group
        if [ $? -eq 0 ]; then
            echo "El grupo ya existe, añadimos al usuario $usuario al grupo $grupo"
            usermod -aG $grupo $usuario
        else
            echo "El grupo no existe, crearemos el grupo $grupo y añadimos al usuario"
            groupadd $grupo
            usermod -aG $grupo $usuario
        fi
        ;;    
    2)
        read -p "Dime el usuario a borrar: " del
        grep "^$del:" /etc/passwd
        if [ $? -eq 0 ];then
            echo "El usuario $del existe y lo borraremos del sistema"
            userdel -r $del
        else
            echo "El usuario no existe, no se puede borrar"
        fi
        ;;
        
    3)
        read -p "Introduce un grupo para añadir el usuario: " grupo
        read -p "Introduce el nombre del usuario a modificar: " usuario
        grep "^$grupo:" /etc/group
        if [ $? -eq 0 ]; then
            echo "El grupo ya existe, añadimos al usuario $usuario al grupo $grupo"
            usermod -aG $grupo $usuario
        else
            echo "El grupo no existe, crearemos el grupo $grupo y añadimos al usuario"
            groupadd $grupo
            usermod -aG $grupo $usuario
        fi
        ;;
    4)
        exit;;
    *)
        echo "Has introducido una opcion invalida";;
    esac

    read -p "¿Quieres realizar otra operación? (s/n): " repetir

    done
else
    echo "No eres root"
fi