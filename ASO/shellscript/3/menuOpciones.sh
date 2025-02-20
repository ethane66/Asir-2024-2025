#!/bin/bash
until [ $# -eq 0 ] # hasta que sea 0
do 
    if [ !-f $1 ]; then
    echo "$1 no es un fichero!!!"
    else
    echo -----MENU-----
    echo -----$1-----
    echo "1-muestra el contenido"
    echo "2-imprimir"
    echo "3-borrar"
    echo "4-siguiente"
    echo "5-salir"
    read -p "introduce una opción -> " numero
        case $numero in 
            1)cat $1
            echo ""
            exit;;
            2)echo "esto imprime"
            echo ""
            exit;;
            3)rm $1
            echo ""
            exit;;
            4)shift
            exit;; 
            5)echo "saliendo..."
            echo ""
            exit;; 
        esac
    fi
    echo "no hay mas ficheros"
done