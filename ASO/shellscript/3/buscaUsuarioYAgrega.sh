#!/bin/bash
nombre=0
read -p "introduce el usuario a buscar: " nombre

busqueda=$(cat /etc/passwd | grep ^$nombre | cut -d: -f1)

if [ "$busqueda" = "$nombre" ]; then
    echo "Valor de \$busqueda: $busqueda"
    echo "el usuario $nombre si existe"
else
    echo "el usuario $nombre no existe"
    echo "creando el usuario $nombre ..."
    useradd -m $nombre #añadir usuario con parametros por defecto
    if [ $? -eq 0 ]; then 
        echo "el usuario $nombre se ha creado"
        echo "ahora introduce una contraseña para $nombre"
        passwd $nombre #pide que se le asigne una contraseña
        echo "---"
        echo "se le va a signar bash al usuario $nombre"
        usermod -s /bin/bash $nombre #le cambia la shell a bash
        echo "---"
        nuevousuario=$(cat /etc/passwd | grep ^$nombre)
        echo "$nuevousuario" #muestra el nuevo usuario, gid y shell
    fi
fi