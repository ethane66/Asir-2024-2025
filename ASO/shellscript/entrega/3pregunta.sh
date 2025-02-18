#!/bin/bash
# Autor: Víctor Rodríguez Pérez
read -p "cual es tu nombre? -> " nombre

read -p "cual es tu edad? -> " edad

sleep 3

if [ "$edad" -ge 99 ]; then
echo "edad invalida!!!"
else
echo "te llamas $nombre y tienes $edad años"
fi