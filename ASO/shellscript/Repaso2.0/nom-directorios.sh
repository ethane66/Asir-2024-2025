#!/bin/bash

directorio=$(pwd)

echo "Actualmente estas en $directorio "

echo "carpetas dentro con find "

find $directorio -type d

echo "Usando ls"

ls -al "$directorio" | grep "^d"
