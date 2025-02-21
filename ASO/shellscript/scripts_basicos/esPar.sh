#!/bin/bash
clear
read -p "numero? = " AN
let espar=$AN%2
case $espar in
0)num="par";;
1)num="impar";;
*)num="Error";;
esac
echo "tu número es $num"
