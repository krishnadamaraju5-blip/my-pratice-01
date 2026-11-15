#!/bin/bash

var1=20
var2=30

echo "Addition of two numbers: $(($var1+$var2))"

declare -i COUNT=5
COUNT=COUNT+1

echo "Count is: $COUNT"

FRUITS=("Apple" "Banana" "Pappaya")

echo "ALL fruits: ${FRUITS[@]}
echo "First Fruit: ${FRUITS[1]}"

name="Sivakumar Reddy M"
 
echo "${name}ettukure"