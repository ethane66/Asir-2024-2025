#!/bin/bash
#vamos a crear un script que reciba comp parametros nombre de ficheros
#comprobar que se han parametros
#Vamos a verificasr que ese fichero existe
#Si existe lo haremos ejecutable para el usuario y el grupo
#mostrar estado final de los permisos

if [ $# -eq 0 ]; then
    echo "introduce parametros"
    exit 
fi

for fichero in $* 
do
    if [ -f $fichero ]
     then
          echo "el fichero $fichero existe"
          chmod ug+x $fichero
          echo "Se han aplicado los permisos de ejecucion al usuario y grupo"
     else
      echo "el parametro no existe"
    fi
done