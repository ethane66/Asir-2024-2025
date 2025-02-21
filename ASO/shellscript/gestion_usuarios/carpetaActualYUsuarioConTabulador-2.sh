#!/bin/bash
#hay que usar echo -e para interpretar caracteres especiales
echo "Escribe datos"
pwd
echo -e "Quien \v eres?, \v\v soy:" #el caracter \v es un tabulador vertical (salto de linea sin volver al principio)
who
read -p "Introduce tu DNI:" dni #read -p hace que no tengamos que añadir echo
echo -e "Tu DNI es: $dni" 
