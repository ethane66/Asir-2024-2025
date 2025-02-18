#!/bin/bash
if [ $# -eq 0 ];then
    echo "introduce numeros!!!"
    exit
fi
contador=0
echo "el nombre del fichero es $0"
echo "hay un total de $# parametros"
echo "los parametros son: $*"
for i in $*;do
    contador=$(($contador+$i))
done
echo "la suma de todos es: $contador"