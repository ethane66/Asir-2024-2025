#!/bin/bash
while true; do
clear
echo 1-sumar
echo 2-restar
echo 3-multiplicar
echo 4-dividir
echo 5-salir
echo
read -p "Introduce una opción: " op
case $op in
1)echo "$1 + $2 = $(($1+$2))"
  read pause;;
2)echo "$1 - $2 = $(($1-$2))"
  read pause;;
3)echo "$1 * $2 = $(($1*$2))"
  read pause;;
4)echo "$1 / $2 = $(($1/$2))"
  read pause;;
5)echo "No has decidido nada"
  break;;
esac
done
