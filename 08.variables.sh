#!/bin/bash

START_TIME=$(date +"%d-%m-%Y %H:%M:%S")

echo " Start time of the script: $START_TIME"
sleep 10&

wait $!

END_TIME=$(date +"%d-%m-%Y %H:%M:%S")

echo "End Time of the script: $END_TIME"

TOTAL_TIME=$(date +"%d-%m-%Y %H:%M:%S")-$(date +"%d-%m-%Y %H:%M:%S")

echo "Total Time taken by the script: $TOTAL_TIME"

