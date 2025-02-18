#!/bin/bash
clear
read -p "Introduce una nota (de 0 a 10): " nota
until [ $nota -ge 0 -a $nota -le 10 ]; do #rango numerico del 1 al 10
clear
echo "$nota está fuera de los límites!!"
read -p "Introduce una nota (de 0 a 10): " nota
done
echo "Test de validación pasado"
