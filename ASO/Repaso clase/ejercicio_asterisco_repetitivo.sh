#!/bin/bash

pregunta=s

while [ "$pregunta" = "s" ]
do
    read -n2 -p "Introduce un numero entre 1 y 99: " numero

    for (( i=1; i<=$numero; i++ )) 
    do
        echo -n "*"
    done
    echo

    read -p "Quieres continuar (s/n): " pregunta
done