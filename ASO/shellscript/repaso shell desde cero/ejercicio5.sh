#!/bin/bash
#Crear un script que reciba un nombre de archivo como parámetro y muestre cuántas líneas tiene.

read -p "Introduce un archivo para ver sus lineas " archivo

contar=$(wc -l < "$archivo")

echo "Hay $contar lineas en el archivo $archivo"