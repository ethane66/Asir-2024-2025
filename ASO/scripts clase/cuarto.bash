#!/bin/bash

clear

read -p "Introduce un numero" numero
if [ `expr $numero % 2` -eq 0 ]
then 
echo "ELl numero introdcido es $numero y es par"
else 
echo "El numero introducido es $numero y es inpar"
fi

done

echo "Test de validación pasado. La nota introducida es: $NOTA"
