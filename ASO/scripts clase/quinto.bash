#!/bin/bash
repetir=s
num=0
while [ $repetir = s ]
do
  read -p "Introduce un numero: = " num
    if [ `expr $num % 2` -eq 0 ]
    then
      echo "el número $num es par"
    else
      echo "el número $num es impar"
    fi
  echo -n  "deseas introducir otro numero? (s/n): "
  read repetir
done
