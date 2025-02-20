#!/bin/bash
#El usuario tiene que ejecutar el Shell como root, en caso contrario mostrar un mensaje de error y terminar
esRoot=$( whoami )
if [ "$esRoot" != "root" ]; then
    echo "tienes que ser root"
    exit
fi

#El número de argumentos es indefinido pero si no se le pasan argumentos mostramos un mensaje de que "no has pasado parametros" y terminar
if [ $# -eq 0 ]; then
    echo "no has pasado parametros !!!"
    exit
fi

#El nombre de usuario pasado como argumento tiene que exstir en el sistema, sino existe el mensaje que dar es "el usuario tiene que estar creado"
while [ $# -ne 0 ]; do
    existeUsuario=$( cat /etc/passwd | grep ^$1 | cut -d: -f1 )
    if [ "$existeUsuario" = "$1" ]; then 
        echo "el usuario $1 existe"
        grupo=$( cat /etc/passwd | grep ^$1 | cut -d: -f4)

        echo "se va a crear el usuario $1_backups"

        compruebaBackup=$( cat /etc/group | grep ^backups | cut -d: -f1 )
        if [ "$compruebaBackup" != "backups" ]; then
            echo "el grupo backups no existe creando..."
            groupadd backups
            sacarUid=$( cat /etc/group | grep ^backups | cut -d: -f3 )

            echo "creando usuario $1_backups con nueva home"
            useradd -d /home/$1_backups -m -s /bin/bash -g $sacarUid $1_backups

            echo "se va a copiar el directorio del usuario orignal"
            cp -r /home/$1/* /home/$1_backups 

            echo "se van a asignar los permisos al nuevo usuario"
            buscarCarpetas=$( ls -1 /home/$1_backups )
            for x in $buscarCarpetas; do
                ruta="/home/$1_backups/$x"
                if [ -d $ruta ]; then
                    #carpetas
                    chown -R $1_backups $ruta
                    chgrp $1 $ruta 
                else 
                    #ficheros
                    chown $1_backups $ruta
                    chgrp $1 $ruta
                fi
            done
        else
            echo "el usuario $1 tiene que estar creado"
        fi
    fi
    shift
done
