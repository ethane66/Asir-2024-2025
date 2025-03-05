#!/bin/bash

usuario=$(whoami)

echo "el usuario es $usuario"

if [ $usuario = "manolo" ]; then
    echo "Hola manolo"
else
    echo "Tu no eres manolo, eres $usuario"
fi