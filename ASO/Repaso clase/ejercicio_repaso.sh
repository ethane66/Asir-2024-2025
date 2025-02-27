#/bin/bash
#crea un shell script que mediante un menu permita el manteniiento de un fichero que haga lo siguiente
#Añadir registro hasta que se deje en blanco o introduzca unos caracteres
#Busca registro
#Exit

opcion=0
registro=0
nombre=0
opcion1=s
clear

while [ true ]
do
    echo "-------------------------"
    echo "---a) Añadir registro ---"
    echo "---b) BUscar registros ---"
    echo "---c) Salir --------------"
    echo "--------------------------"
        read -n1 -p "Elije una opcion: " opcion
    case $opcion in 
        a) 
            registro=x
            while [ $registro != "xxx" ]; do
            echo "Introduce xxx cuando quieras terminar de introducir datos"
            read -p "Nuevo registro (nombre:direccion:telefono): " registro
            if [ "$registro" != "xxx" ]
            then 
                echo "Añado $registro al fichero"
                echo $registro >> lista.txt
            else
                echo "No quieres segur introduciendo mas datos"
            fi
        done;;
        b) 
            opcion1=s
            echo ""
            while [ $opcion1 = "s" ]
            do
            read -p "Introduce nombre a buscar" nombre
            grep $nombre lista.txt
            if [ $? -eq 0 ]; then

                    echo "El nombre introducido existe en lista"
                else
                    echo "El nombre introducido NO existe en lista"

            fi
            read -n1 -p "Quieres buscar mas opciones? (S/N): " opcion1
            done;;
        c) exit;;
        *) echo "Has introducido una opcion incorrecta";;
    esac

done