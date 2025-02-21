#!/bin/bash
clear
num=0
read -p "numero? = " num
if (( num % 2 == 0 )); then
    echo "el número $num es par"
else
    echo "el número $num es impar"
fi
