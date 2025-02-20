#!/bin/bash
palabra1=$( cat fichero.txt | cut -d " " -f1)
palabra2=$( cat fichero.txt | cut -d " " -f2)
palabra3=$( cat fichero.txt | cut -d " " -f3)

echo "$palabra1 , $palabra2 , $palabra3"
if [ "$palabra1" = "$palabra2" ]; then
    if [ "$palabra2" = "$palabra3" ]; then
        if [ "$palabra1" = "$palabra3" ]; then
        echo "son iguales"
        fi
    fi
else
echo "no son iguales"
fi