#!/bin/bash
#hay que usar echo -e para interpretar caracteres especiales
echo "Escribe datos"
pwd
echo -e "Quien \v eres?, \v\v soy:" #el caracter \v es un tabulador vertical (salto de linea sin volver al principio)
who
echo -e "T\bu DNI es: $dni" #el caracter \b vuelve para atrás en la linea
