#!/bin/bash
#Crear un script que copie un archivo recibido como parámetro en otro destino.

read -p "Introduce el nombre del archivo a copiar " archivo
read -p "Introduce el destino a copiar (ruta absoluta) " ruta

echo "copiando $archivo a $ruta"
cp "$archivo" "$ruta"


