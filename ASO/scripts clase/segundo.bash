#!/bin/bash
clear
read -p "Año de nacimiento:" AN
let resto=$AN%12
case $resto in
0)HOROS="Mono";;
1)HOROS="Rat";;
2)HOROS="Ox";;
3)HOROS="Tiger";;
4)HOROS="Rabbit";;
5)HOROS="Dragon";;
6)HOROS="Snake";;
7)HOROS="Horse";;
8)HOROS="Goat";;
9)HOROS="Monkey";;
10)HOROS="Rooster";;
11)HOROS="Dog";;
12)HOROS="Pig";;
esac
echo "Tu horoscopo chino es $HOROS"
