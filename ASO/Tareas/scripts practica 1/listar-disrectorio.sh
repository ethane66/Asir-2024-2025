#!/bin/bash

# Primera forma: Usando ls y grep
echo "Directorio listado usando ls y grep:"
ls -l | grep "^d" | awk '{print $NF}'

echo ""

# Segunda forma: Usando find
echo "Directorio listado usando find:"
find . -maxdepth 1 -type d | sed 's|./||'
