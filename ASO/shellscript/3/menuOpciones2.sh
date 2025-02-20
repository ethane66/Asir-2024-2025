#!/bin/bash
while true; do
    echo -----MENU-----
    echo "1-crea usuario"
    echo "2-borra usuario"
    echo "3-modifica el grupo del usuario"
    echo "4-salir"
    read -p "introduce una opción -> " opcion
        case $opcion in 
            1)read -p "que usuario quieres crear? -> " usuario
              grep ^$usuario /etc/passwd
              if [ $? -eq 0 ]; then
                echo "el usuario ya existe"
              else
                creando "el usuario $usuario"
                sudo useradd -d /home/$usuario -m -s /bin/bash -k /etc/skell $usuario
              fi
            echo ""
            break;;
            2)read -p "que usuario quieres borrar? -> " usuario
              grep ^$usuario /etc/passwd
              if [ $? -eq 0 ]; then
                sudo userdel -r $usuario
              else
                echo "el usuario no existe"
              fi
            echo ""
            break;;
            3)read -p "que usuario quieres modificar? -> " usuario
              grep ^$usuario /etc/passwd
              if [ $? -eq 0 ]; then
                echo "voy a modificar el grupo del usuario $usuario"
                read -p "introduce el nombre del grupo que quieres poner -> " grupo
                grep ^$group /etc/group
                if [ $? -eq 0 ]; then
                    echo "el grupo ya existe!!!"
                    sudo usermod -g $grupo $usuario
                else
                    echo "el grupo no existe!!!"
                    sudo groupadd $grupo
                    sudo usermod -g $grupo $usuario
                fi
              else
                echo "el usuario no existe"
              fi
            echo ""
            break;;
            4)echo "saliendo..."
            echo ""
            exit;;
        esac
done