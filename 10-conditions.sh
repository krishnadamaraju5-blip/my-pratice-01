#!/bin/bash
 marks=$1 # if you want to give args in command line

echo "Please enter your marks:$1"
# read marks #When you want to enter marks dynamically

if [ $marks -lt 33 ]; then
    echo "Third Class"
elif [ $marks -lt 50 ]; then
    echo "Second Class"
elif [ $marks -lt 60 ]; then
    echo "First Class"
else
    echo "Distinction"
fi   