#!/bin/bash
read -p "Introduce un numero de 3 digitos " num

until [ $num -ge 0 -a $num -le 999 ]; do #rango numerico del 1 al 999
echo "$num está fuera de los límites!!"
read -p "introduce un numero de 3 digitos = " num
done

#variable=${cadena:posición:longitud}
primero="${num:0:1}"
tercero="${num:2:1}"

if [[ "$primero" == "$tercero" ]]; then
    echo "el número $num es capicua"
else
    echo "el número $num no es capicua"
fi