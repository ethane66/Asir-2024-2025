#!/bin/bash

#Crea un shellscript llamado factorial.bash que muestre en pantalla el resultado del factorial del numero solicitado.
#El factorial de un numero hay que ejecutarlo como se dice a continuacion
#ejemplo 3!=1*2*3=6
#Solo podemos hacer el factorial de los numero entre el 1 y el 9, cualquier otro valor introducido no halla el factorial y se muestra el mensaje "El numero introducido "valor introducido" no es un valor correcto"
#Visualizar el resultado igual que el ejemplo siguiente


read -p "Dame un numero del 1 al 9 -> " num
if [ "$num" -lt 1 -o  "$num" -gt 9 ]; then
    echo "El número introducido $num no es un valor correcto"
    exit
fi

factorial=1
lista=0

for (( i=1; i<=num; i++ )); do
    factorial=$((factorial * i))

    if [[ $i -eq 1 ]]; then
        lista="$i"
    else
        lista="$lista * $i"
    fi
done

echo "$num! = $lista = $factorial"