#!/bin/bash
clear
read -p "Introduce un numero: " num
if [ `expr $num % 2` -eq 0 ]
 then
    echo "Es par"
else
    echo "Es impar"
fi
