#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Introduce un parametro"
    exit
fi

while [ $# -gt 0 ]; do
    if [ "$1" -lt 1 -o "$1" -gt 9 ];then 
        echo "El parametro introducido no esta entre 1 y 9"
    else
        factorial=1
            for (( i=$1; i>1; i-- )); do
                factorial=$(expr $factorial \* $i)
            done
            echo "El factorial de $1 es $factorial"
        fi
    shift
done