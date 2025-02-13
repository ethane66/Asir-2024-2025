#!/bin/bash
clear
read -p "Introduce un numero: " num
if (( num % 2 ==  0 )); then
    echo "Es par"
else
    echo "Es impar"
fi
