#!/bin/bash
echo -e "Bienvenido a robo \v tus datos"

echo -e "Quien \t eres, \n soy:" #el \t son tabulaciones, el \v salto de linea y lo pongo debajo del anterior
whoami

echo -e -n  "Intrduce tu \n  DNI: " #con el -e puede interpretar el \n sino no funcionaria
read dni
echo Tu DNI es: $dni
