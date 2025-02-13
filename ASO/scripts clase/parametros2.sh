if [ $# -eq 0 ];then
	echo "Introduzca parametros a $0"
	exit
fi
AC=0
echo "El nombre del fichero es: " $0
echo "Se han paado $# parametros al programa"
echo "La lista de parametros es ---> [ $* ] <----"
for i in $*;do
	AC=$(($AC+$i))
done 
echo "La suma de todos los parametros es: $AC"
