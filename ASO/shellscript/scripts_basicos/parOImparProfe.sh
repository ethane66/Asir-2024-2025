#!/bin/bash
num = 0
read -p "numero? = " num
if [ `expr $num % 2` -eq 0 ]
then
    echo "el número $num es par"
else
    echo "el número $num es impar"
fi
