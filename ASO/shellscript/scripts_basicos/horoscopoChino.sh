#!/bin/bash
clear
read -n4 -p "año de nacimiento (4cifras):" AN
let resto=$AN%12
case $resto in
0)HOROS="Mono";;
1)HOROS="Gallo";;
2)HOROS="Perro";;
3)HOROS="Cerdo";;
4)HOROS="Rata";;
5)HOROS="Buey";;
6)HOROS="Tigre";;
7)HOROS="Conejo";;
8)HOROS="Dragon";;
9)HOROS="Serpiente";;
10)HOROS="Caballo";;
11)HOROS="Cabra";;
*)HOROS="Error";;
esac
echo "Tu horóscopo chino es $HOROS"
