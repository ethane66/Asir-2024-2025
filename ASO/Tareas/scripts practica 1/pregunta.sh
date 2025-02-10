#!/bin/bash

# Preguntar el nombre y la edad
echo -n "¿Cuál es tu nombre? "
read nombre
echo -n "¿Cuántos años tienes? "
read edad

# Pausa de 3 segundos
sleep 3

# Mostrar el resultado
echo "Tu nombre es $nombre y tienes $edad años."
