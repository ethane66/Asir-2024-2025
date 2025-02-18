#!/bin/bash
# Autor: Víctor Rodríguez Pérez
directorio=$(pwd)
echo "el directorio actual es $directorio"
echo "carpetas dentro:"
echo "con find:"
find $directorio -type d
echo "con ls:"
ls -al "$directorio" | grep "^d"