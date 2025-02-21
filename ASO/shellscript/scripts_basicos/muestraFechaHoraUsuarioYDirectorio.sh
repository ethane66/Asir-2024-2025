#!/bin/bash

# Este script displaya la fecha, hora, nombre de 
# usuario y directorio actual
echo "Fecha y hora:"
date
echo
echo "Tu usuario es: `whoami` \\n"  # comillas contrarías      #ejecutan el comando y sustituirlo en la salida
echo "Tu directorio actual es: \\c"
pwd
