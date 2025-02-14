#!/bin/bash
#Crea un script que muestre un menu que realice las siguientes acciones
#Muestra el contenido del fichero
#Imprime el fichero
#Salta al siguente fichero
#Sale del shell script

numero=0

if [ $# -eq 0 ]
then
    echo "Debes introducir algun parametro"
    exit
fi
while [ $# -gt 0 ] 
do
    if [ -f "$1" ] 
    then    
        echo "------------MENU----------------"
        echo "1: Mostrar el contenido"
        echo "2: imprimir"
        echo "3: Borrar"
        echo "4: Ir al siguiente"
        echo "5: salir"
        read numero
        case $numero in 
            1) cat "$1" ;;
            2) lpr "$1" ;;
            3) rm "$1" ;;
            4) shift ;;
            5) exit ;;
            *) echo "Opción no válida" ;;
        esac
    else
        echo "NO ES UN FICHERO $1"
    fi
shift 
done