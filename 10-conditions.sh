#!/bin/bash
# marks=$1

echo "Please enter your marks: "
read marks

if [ $marks -lt 33 ]; then
    echo "Third Class"
elif [ $marks -lt 50 ]; then
    echo "Second Class"
elif [ $marks -lt 60 ]; then
    echo "First Class"
else
    echo "Distinction"
fi   