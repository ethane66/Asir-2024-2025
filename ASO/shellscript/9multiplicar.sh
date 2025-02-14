#!/bin/bash
doce=5
yo=1
nue=9
while [ $yo -le $doce ]
do
    x=1
    while [ $x -le $doce ]
    do
        if [ $(($x * $yo)) -le $nue ]
        then    
            echo -n " $(($x * $yo)) "
        else
            echo -n " $(($x * $yo)) "
        fi
        x=`expr $x + 1`
    done
    echo " "
    yo=`expr $yo + 1`
done