#!/bin/bash
#hay que usar echo -e para interpretar caracteres especiales
echo "Escribe datos"
pwd
echo -e "Quien \v eres?, \v\v soy:" #el caracter \v es un tabulador vertical (salto de linea sin volver al principio)
who
echo -e -n "Introduce \n el DNI:" #el caracter \n es un salto de linea
read dni
echo "Tu DNI es: $dni"
