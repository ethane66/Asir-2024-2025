#!/bin/bash
clear 
for ((i=1;i<=5;i++));do
	subtotal=$(($i*$i))
	acumulador=$(($acumulador + $subtotal))
	echo "Repetición_$i --> subtrotal: $subtotal"
done
echo -e "\t\t   ---"
echo -e "\t    Total: $acumulador"
