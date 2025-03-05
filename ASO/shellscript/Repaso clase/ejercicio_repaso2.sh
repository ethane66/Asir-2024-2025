#!/bin/bash
#Crea un shell script que ejecute las siguientes acciones:
#EL usuario tiene que ejecutar el shell tiene que ser root, en caso contrario mostrar un error
#Si no se pasan argumentos, mostrar un error
#EL nombre de usuario pasado tiene que existir en el sistema, sino error
#El nombre del nuevo usuario "usuarioBACKUP" 

idgrupo=0
nombregrupo=0

if [ $# -eq 0 ]; then
    echo "No me has pasado ningun parametro"
    exit
fi

if [ ´id -u´ -ne 0 ]; then
    echo "No eres root"
    exit
fi
            #-gt Greater than
            #-ne not equal
while [ $# -ne 0 ];do
    grep ^$1: /etc/passwd 
    if [ $? -ne 0 ]; then
        echo "ERROR el usuario $1 no existe en el sistema"
    else
        idgrupo= ´grep ^$1: /etc/passwd | cut -d: -f4 ´
        nombregrupo= ´grep $idgrupo /etc/group | cut -d: -f1 ´
        grep ´"backup:" /etc/group ´
        if [ $? -ne 0 ]; then
            groupadd backup
        fi
    useradd -d /home/$1backup -m -s /bin/bash -k /etc/skell -g $nombregrupo -G backup $1backup
    cp /home/$1/* /home/$1backup
    fi

shift 
done
